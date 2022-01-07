
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xattr_entry {int dummy; } ;


 int namevalue_size_xi (struct ocfs2_xattr_info*) ;

__attribute__((used)) static int ocfs2_xi_entry_usage(struct ocfs2_xattr_info *xi)
{
 return namevalue_size_xi(xi) +
  sizeof(struct ocfs2_xattr_entry);
}
