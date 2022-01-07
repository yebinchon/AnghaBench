
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int dummy; } ;


 int namevalue_size_xe (struct ocfs2_xattr_entry*) ;

__attribute__((used)) static int ocfs2_xe_entry_usage(struct ocfs2_xattr_entry *xe)
{
 return namevalue_size_xe(xe) +
  sizeof(struct ocfs2_xattr_entry);
}
