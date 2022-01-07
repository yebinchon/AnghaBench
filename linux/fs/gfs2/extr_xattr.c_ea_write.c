
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_sbd {scalar_t__ sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct gfs2_ea_request {unsigned int er_data_len; unsigned int er_name_len; char const* er_name; char const* er_data; int er_type; } ;
struct gfs2_ea_header {unsigned int ea_name_len; unsigned int ea_num_ptrs; scalar_t__ __pad; int ea_type; int ea_data_len; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int __be64 ;


 unsigned int DIV_ROUND_UP (unsigned int,scalar_t__) ;
 scalar_t__ GFS2_EA2DATA (struct gfs2_ea_header*) ;
 int * GFS2_EA2DATAPTRS (struct gfs2_ea_header*) ;
 scalar_t__ GFS2_EA2NAME (struct gfs2_ea_header*) ;
 scalar_t__ GFS2_EAREQ_SIZE_STUFFED (struct gfs2_ea_request*) ;
 int GFS2_FORMAT_ED ;
 int GFS2_METATYPE_ED ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be32 (unsigned int) ;
 int cpu_to_be64 (int ) ;
 int gfs2_add_inode_blocks (int *,int) ;
 int gfs2_alloc_blocks (struct gfs2_inode*,int *,unsigned int*,int ,int *) ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_remove_revoke (struct gfs2_sbd*,int ,int) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;
 int memset (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static int ea_write(struct gfs2_inode *ip, struct gfs2_ea_header *ea,
      struct gfs2_ea_request *er)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 int error;

 ea->ea_data_len = cpu_to_be32(er->er_data_len);
 ea->ea_name_len = er->er_name_len;
 ea->ea_type = er->er_type;
 ea->__pad = 0;

 memcpy(GFS2_EA2NAME(ea), er->er_name, er->er_name_len);

 if (GFS2_EAREQ_SIZE_STUFFED(er) <= sdp->sd_jbsize) {
  ea->ea_num_ptrs = 0;
  memcpy(GFS2_EA2DATA(ea), er->er_data, er->er_data_len);
 } else {
  __be64 *dataptr = GFS2_EA2DATAPTRS(ea);
  const char *data = er->er_data;
  unsigned int data_len = er->er_data_len;
  unsigned int copy;
  unsigned int x;

  ea->ea_num_ptrs = DIV_ROUND_UP(er->er_data_len, sdp->sd_jbsize);
  for (x = 0; x < ea->ea_num_ptrs; x++) {
   struct buffer_head *bh;
   u64 block;
   int mh_size = sizeof(struct gfs2_meta_header);
   unsigned int n = 1;

   error = gfs2_alloc_blocks(ip, &block, &n, 0, ((void*)0));
   if (error)
    return error;
   gfs2_trans_remove_revoke(sdp, block, 1);
   bh = gfs2_meta_new(ip->i_gl, block);
   gfs2_trans_add_meta(ip->i_gl, bh);
   gfs2_metatype_set(bh, GFS2_METATYPE_ED, GFS2_FORMAT_ED);

   gfs2_add_inode_blocks(&ip->i_inode, 1);

   copy = data_len > sdp->sd_jbsize ? sdp->sd_jbsize :
          data_len;
   memcpy(bh->b_data + mh_size, data, copy);
   if (copy < sdp->sd_jbsize)
    memset(bh->b_data + mh_size + copy, 0,
           sdp->sd_jbsize - copy);

   *dataptr++ = cpu_to_be64(bh->b_blocknr);
   data += copy;
   data_len -= copy;

   brelse(bh);
  }

  gfs2_assert_withdraw(sdp, !data_len);
 }

 return 0;
}
