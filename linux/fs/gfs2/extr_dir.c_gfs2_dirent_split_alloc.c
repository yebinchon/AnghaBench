
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {int b_size; int b_data; } ;


 scalar_t__ IS_ERR_OR_NULL (struct gfs2_dirent*) ;
 struct gfs2_dirent* do_init_dirent (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*,unsigned int) ;
 int gfs2_dirent_find_offset ;
 struct gfs2_dirent* gfs2_dirent_scan (struct inode*,int ,int ,int ,struct qstr const*,void*) ;

__attribute__((used)) static struct gfs2_dirent *gfs2_dirent_split_alloc(struct inode *inode,
         struct buffer_head *bh,
         const struct qstr *name,
         void *ptr)
{
 struct gfs2_dirent *dent;
 dent = gfs2_dirent_scan(inode, bh->b_data, bh->b_size,
    gfs2_dirent_find_offset, name, ptr);
 if (IS_ERR_OR_NULL(dent))
  return dent;
 return do_init_dirent(inode, dent, name, bh,
         (unsigned)(ptr - (void *)dent));
}
