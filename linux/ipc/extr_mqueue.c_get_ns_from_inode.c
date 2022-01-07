
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int dummy; } ;
struct inode {int dummy; } ;


 struct ipc_namespace* __get_ns_from_inode (struct inode*) ;
 int mq_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct ipc_namespace *get_ns_from_inode(struct inode *inode)
{
 struct ipc_namespace *ns;

 spin_lock(&mq_lock);
 ns = __get_ns_from_inode(inode);
 spin_unlock(&mq_lock);
 return ns;
}
