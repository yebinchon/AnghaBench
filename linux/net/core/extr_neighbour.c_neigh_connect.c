
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {TYPE_1__* ops; int output; } ;
struct TYPE_2__ {int connected_output; } ;


 int neigh_dbg (int,char*,struct neighbour*) ;

__attribute__((used)) static void neigh_connect(struct neighbour *neigh)
{
 neigh_dbg(2, "neigh %p is connected\n", neigh);

 neigh->output = neigh->ops->connected_output;
}
