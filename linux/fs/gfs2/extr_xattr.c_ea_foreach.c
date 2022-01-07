
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_diskflags; int i_gl; int i_inode; int i_eattr; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ea_call_t ;
typedef int __be64 ;
struct TYPE_3__ {int sd_inptrs; } ;


 int DIO_WAIT ;
 int EIO ;
 int GFS2_DIF_EA_INDIRECT ;
 int GFS2_METATYPE_IN ;
 TYPE_1__* GFS2_SB (int *) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int ea_foreach_i (struct gfs2_inode*,struct buffer_head*,int ,void*) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (TYPE_1__*,struct buffer_head*,int ) ;

__attribute__((used)) static int ea_foreach(struct gfs2_inode *ip, ea_call_t ea_call, void *data)
{
 struct buffer_head *bh, *eabh;
 __be64 *eablk, *end;
 int error;

 error = gfs2_meta_read(ip->i_gl, ip->i_eattr, DIO_WAIT, 0, &bh);
 if (error)
  return error;

 if (!(ip->i_diskflags & GFS2_DIF_EA_INDIRECT)) {
  error = ea_foreach_i(ip, bh, ea_call, data);
  goto out;
 }

 if (gfs2_metatype_check(GFS2_SB(&ip->i_inode), bh, GFS2_METATYPE_IN)) {
  error = -EIO;
  goto out;
 }

 eablk = (__be64 *)(bh->b_data + sizeof(struct gfs2_meta_header));
 end = eablk + GFS2_SB(&ip->i_inode)->sd_inptrs;

 for (; eablk < end; eablk++) {
  u64 bn;

  if (!*eablk)
   break;
  bn = be64_to_cpu(*eablk);

  error = gfs2_meta_read(ip->i_gl, bn, DIO_WAIT, 0, &eabh);
  if (error)
   break;
  error = ea_foreach_i(ip, eabh, ea_call, data);
  brelse(eabh);
  if (error)
   break;
 }
out:
 brelse(bh);
 return error;
}
