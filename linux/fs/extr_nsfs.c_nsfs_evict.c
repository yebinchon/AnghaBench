
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ns_common {TYPE_1__* ops; } ;
struct inode {struct ns_common* i_private; } ;
struct TYPE_2__ {int (* put ) (struct ns_common*) ;} ;


 int clear_inode (struct inode*) ;
 int stub1 (struct ns_common*) ;

__attribute__((used)) static void nsfs_evict(struct inode *inode)
{
 struct ns_common *ns = inode->i_private;
 clear_inode(inode);
 ns->ops->put(ns);
}
