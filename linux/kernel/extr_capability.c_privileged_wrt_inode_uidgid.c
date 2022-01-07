
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct inode {int i_gid; int i_uid; } ;


 scalar_t__ kgid_has_mapping (struct user_namespace*,int ) ;
 scalar_t__ kuid_has_mapping (struct user_namespace*,int ) ;

bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct inode *inode)
{
 return kuid_has_mapping(ns, inode->i_uid) &&
  kgid_has_mapping(ns, inode->i_gid);
}
