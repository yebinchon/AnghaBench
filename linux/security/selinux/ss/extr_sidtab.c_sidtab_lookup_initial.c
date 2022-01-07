
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sidtab {TYPE_1__* isids; } ;
struct context {int dummy; } ;
struct TYPE_2__ {struct context context; scalar_t__ set; } ;



__attribute__((used)) static struct context *sidtab_lookup_initial(struct sidtab *s, u32 sid)
{
 return s->isids[sid - 1].set ? &s->isids[sid - 1].context : ((void*)0);
}
