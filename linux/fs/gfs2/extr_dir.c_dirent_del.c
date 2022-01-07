
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct gfs2_inode {int i_gl; } ;
struct TYPE_2__ {scalar_t__ no_formal_ino; scalar_t__ no_addr; } ;
struct gfs2_dirent {int de_rec_len; TYPE_1__ de_inum; } ;
struct buffer_head {char* b_data; int b_size; } ;


 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_dirent_sentinel (struct gfs2_dirent*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;

__attribute__((used)) static void dirent_del(struct gfs2_inode *dip, struct buffer_head *bh,
         struct gfs2_dirent *prev, struct gfs2_dirent *cur)
{
 u16 cur_rec_len, prev_rec_len;

 if (gfs2_dirent_sentinel(cur)) {
  gfs2_consist_inode(dip);
  return;
 }

 gfs2_trans_add_meta(dip->i_gl, bh);





 if (!prev) {
  cur->de_inum.no_addr = 0;
  cur->de_inum.no_formal_ino = 0;
  return;
 }



 prev_rec_len = be16_to_cpu(prev->de_rec_len);
 cur_rec_len = be16_to_cpu(cur->de_rec_len);

 if ((char *)prev + prev_rec_len != (char *)cur)
  gfs2_consist_inode(dip);
 if ((char *)cur + cur_rec_len > bh->b_data + bh->b_size)
  gfs2_consist_inode(dip);

 prev_rec_len += cur_rec_len;
 prev->de_rec_len = cpu_to_be16(prev_rec_len);
}
