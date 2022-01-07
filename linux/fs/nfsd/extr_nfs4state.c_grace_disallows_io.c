
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ mandatory_lock (struct inode*) ;
 scalar_t__ opens_in_grace (struct net*) ;

__attribute__((used)) static inline int
grace_disallows_io(struct net *net, struct inode *inode)
{
 return opens_in_grace(net) && mandatory_lock(inode);
}
