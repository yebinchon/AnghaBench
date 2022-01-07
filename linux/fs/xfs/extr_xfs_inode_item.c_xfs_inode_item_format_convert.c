
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_iovec {int i_len; struct xfs_inode_log_format_32* i_addr; } ;
struct xfs_inode_log_format_32 {int ilf_boffset; int ilf_len; int ilf_blkno; int ilf_u; int ilf_ino; int ilf_dsize; int ilf_asize; int ilf_fields; int ilf_size; int ilf_type; } ;
struct xfs_inode_log_format {int ilf_boffset; int ilf_len; int ilf_blkno; int ilf_u; int ilf_ino; int ilf_dsize; int ilf_asize; int ilf_fields; int ilf_size; int ilf_type; } ;


 int EFSCORRUPTED ;
 int memcpy (int *,int *,int) ;

int
xfs_inode_item_format_convert(
 struct xfs_log_iovec *buf,
 struct xfs_inode_log_format *in_f)
{
 struct xfs_inode_log_format_32 *in_f32 = buf->i_addr;

 if (buf->i_len != sizeof(*in_f32))
  return -EFSCORRUPTED;

 in_f->ilf_type = in_f32->ilf_type;
 in_f->ilf_size = in_f32->ilf_size;
 in_f->ilf_fields = in_f32->ilf_fields;
 in_f->ilf_asize = in_f32->ilf_asize;
 in_f->ilf_dsize = in_f32->ilf_dsize;
 in_f->ilf_ino = in_f32->ilf_ino;
 memcpy(&in_f->ilf_u, &in_f32->ilf_u, sizeof(in_f->ilf_u));
 in_f->ilf_blkno = in_f32->ilf_blkno;
 in_f->ilf_len = in_f32->ilf_len;
 in_f->ilf_boffset = in_f32->ilf_boffset;
 return 0;
}
