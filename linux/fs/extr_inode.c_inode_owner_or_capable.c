
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct inode {int i_uid; } ;


 int CAP_FOWNER ;
 int current_fsuid () ;
 struct user_namespace* current_user_ns () ;
 scalar_t__ kuid_has_mapping (struct user_namespace*,int ) ;
 scalar_t__ ns_capable (struct user_namespace*,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

bool inode_owner_or_capable(const struct inode *inode)
{
 struct user_namespace *ns;

 if (uid_eq(current_fsuid(), inode->i_uid))
  return 1;

 ns = current_user_ns();
 if (kuid_has_mapping(ns, inode->i_uid) && ns_capable(ns, CAP_FOWNER))
  return 1;
 return 0;
}
