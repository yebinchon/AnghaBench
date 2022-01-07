
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void net ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {void* net_ns; } ;


 TYPE_2__* current ;
 int refcount_inc (int *) ;

__attribute__((used)) static void *net_grab_current_ns(void)
{
 struct net *ns = current->nsproxy->net_ns;




 return ns;
}
