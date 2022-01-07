
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_sbd {int sd_inptrs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_diskflags; int i_inode; int i_eattr; int i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef scalar_t__ __be64 ;


 int DIO_WAIT ;
 int EIO ;
 int ENOSPC ;
 int GFS2_DIF_EA_INDIRECT ;
 int GFS2_EA_BH2FIRST (struct buffer_head*) ;
 int GFS2_FORMAT_IN ;
 int GFS2_METATYPE_IN ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_be64 (int ) ;
 int ea_alloc_blk (struct gfs2_inode*,struct buffer_head**) ;
 int ea_set_remove_stuffed (struct gfs2_inode*,void*) ;
 int ea_write (struct gfs2_inode*,int ,struct gfs2_ea_request*) ;
 int gfs2_add_inode_blocks (int *,int) ;
 int gfs2_alloc_blocks (struct gfs2_inode*,int *,unsigned int*,int ,int *) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_remove_revoke (struct gfs2_sbd*,int ,int) ;

__attribute__((used)) static int ea_set_block(struct gfs2_inode *ip, struct gfs2_ea_request *er,
   void *private)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *indbh, *newbh;
 __be64 *eablk;
 int error;
 int mh_size = sizeof(struct gfs2_meta_header);

 if (ip->i_diskflags & GFS2_DIF_EA_INDIRECT) {
  __be64 *end;

  error = gfs2_meta_read(ip->i_gl, ip->i_eattr, DIO_WAIT, 0,
           &indbh);
  if (error)
   return error;

  if (gfs2_metatype_check(sdp, indbh, GFS2_METATYPE_IN)) {
   error = -EIO;
   goto out;
  }

  eablk = (__be64 *)(indbh->b_data + mh_size);
  end = eablk + sdp->sd_inptrs;

  for (; eablk < end; eablk++)
   if (!*eablk)
    break;

  if (eablk == end) {
   error = -ENOSPC;
   goto out;
  }

  gfs2_trans_add_meta(ip->i_gl, indbh);
 } else {
  u64 blk;
  unsigned int n = 1;
  error = gfs2_alloc_blocks(ip, &blk, &n, 0, ((void*)0));
  if (error)
   return error;
  gfs2_trans_remove_revoke(sdp, blk, 1);
  indbh = gfs2_meta_new(ip->i_gl, blk);
  gfs2_trans_add_meta(ip->i_gl, indbh);
  gfs2_metatype_set(indbh, GFS2_METATYPE_IN, GFS2_FORMAT_IN);
  gfs2_buffer_clear_tail(indbh, mh_size);

  eablk = (__be64 *)(indbh->b_data + mh_size);
  *eablk = cpu_to_be64(ip->i_eattr);
  ip->i_eattr = blk;
  ip->i_diskflags |= GFS2_DIF_EA_INDIRECT;
  gfs2_add_inode_blocks(&ip->i_inode, 1);

  eablk++;
 }

 error = ea_alloc_blk(ip, &newbh);
 if (error)
  goto out;

 *eablk = cpu_to_be64((u64)newbh->b_blocknr);
 error = ea_write(ip, GFS2_EA_BH2FIRST(newbh), er);
 brelse(newbh);
 if (error)
  goto out;

 if (private)
  ea_set_remove_stuffed(ip, private);

out:
 brelse(indbh);
 return error;
}
