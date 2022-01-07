
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xa_loc {scalar_t__ xl_entry; TYPE_1__* xl_header; } ;
struct TYPE_2__ {int xh_count; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ ocfs2_xa_can_reuse_entry (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ;
 int ocfs2_xa_check_space_helper (int,int,int) ;
 int ocfs2_xa_get_free_start (struct ocfs2_xa_loc*) ;
 scalar_t__ ocfs2_xe_entry_usage (scalar_t__) ;
 int ocfs2_xi_entry_usage (struct ocfs2_xattr_info*) ;

__attribute__((used)) static int ocfs2_xa_block_check_space(struct ocfs2_xa_loc *loc,
          struct ocfs2_xattr_info *xi)
{
 int count = le16_to_cpu(loc->xl_header->xh_count);
 int free_start = ocfs2_xa_get_free_start(loc);
 int needed_space = ocfs2_xi_entry_usage(xi);






 if (loc->xl_entry) {

  if (ocfs2_xa_can_reuse_entry(loc, xi))
   needed_space = 0;
  else
   needed_space -= ocfs2_xe_entry_usage(loc->xl_entry);
 }
 if (needed_space < 0)
  needed_space = 0;
 return ocfs2_xa_check_space_helper(needed_space, free_start, count);
}
