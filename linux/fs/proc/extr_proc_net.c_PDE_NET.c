
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {TYPE_1__* parent; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net* data; } ;



__attribute__((used)) static inline struct net *PDE_NET(struct proc_dir_entry *pde)
{
 return pde->parent->data;
}
