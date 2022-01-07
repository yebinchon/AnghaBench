
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xa_loc {scalar_t__ xl_entry; TYPE_1__* xl_inode; TYPE_2__* xl_header; } ;
struct TYPE_4__ {int xh_count; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int le16_to_cpu (int ) ;
 int namevalue_size_xi (struct ocfs2_xattr_info*) ;
 int ocfs2_bucket_align_free_start (struct super_block*,int,int) ;
 scalar_t__ ocfs2_xa_can_reuse_entry (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ;
 int ocfs2_xa_check_space_helper (int,int,int) ;
 int ocfs2_xa_get_free_start (struct ocfs2_xa_loc*) ;
 int ocfs2_xi_entry_usage (struct ocfs2_xattr_info*) ;

__attribute__((used)) static int ocfs2_xa_bucket_check_space(struct ocfs2_xa_loc *loc,
           struct ocfs2_xattr_info *xi)
{
 int rc;
 int count = le16_to_cpu(loc->xl_header->xh_count);
 int free_start = ocfs2_xa_get_free_start(loc);
 int needed_space = ocfs2_xi_entry_usage(xi);
 int size = namevalue_size_xi(xi);
 struct super_block *sb = loc->xl_inode->i_sb;







 if (loc->xl_entry) {

  if (ocfs2_xa_can_reuse_entry(loc, xi))
   needed_space = 0;
  else
   needed_space -= sizeof(struct ocfs2_xattr_entry);
 }
 BUG_ON(needed_space < 0);

 if (free_start < size) {
  if (needed_space)
   return -ENOSPC;
 } else {






  rc = ocfs2_xa_check_space_helper(needed_space, free_start,
       count);
  if (rc)
   return rc;
  free_start = ocfs2_bucket_align_free_start(sb, free_start,
          size);
 }
 return ocfs2_xa_check_space_helper(needed_space, free_start, count);
}
