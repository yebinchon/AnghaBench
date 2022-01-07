
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_xattr_entry {int dummy; } ;


 int EIO ;
 int ENOSPC ;
 int OCFS2_XATTR_HEADER_GAP ;

__attribute__((used)) static int ocfs2_xa_check_space_helper(int needed_space, int free_start,
           int num_entries)
{
 int free_space;

 if (!needed_space)
  return 0;

 free_space = free_start -
  sizeof(struct ocfs2_xattr_header) -
  (num_entries * sizeof(struct ocfs2_xattr_entry)) -
  OCFS2_XATTR_HEADER_GAP;
 if (free_space < 0)
  return -EIO;
 if (free_space < needed_space)
  return -ENOSPC;

 return 0;
}
