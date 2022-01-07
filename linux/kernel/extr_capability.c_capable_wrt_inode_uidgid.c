
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct inode {int dummy; } ;


 struct user_namespace* current_user_ns () ;
 scalar_t__ ns_capable (struct user_namespace*,int) ;
 scalar_t__ privileged_wrt_inode_uidgid (struct user_namespace*,struct inode const*) ;

bool capable_wrt_inode_uidgid(const struct inode *inode, int cap)
{
 struct user_namespace *ns = current_user_ns();

 return ns_capable(ns, cap) && privileged_wrt_inode_uidgid(ns, inode);
}
