
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* level; } ;
struct context {TYPE_2__ range; } ;
struct TYPE_3__ {int cat; } ;


 int ebitmap_destroy (int *) ;
 int mls_context_init (struct context*) ;

__attribute__((used)) static inline void mls_context_destroy(struct context *c)
{
 ebitmap_destroy(&c->range.level[0].cat);
 ebitmap_destroy(&c->range.level[1].cat);
 mls_context_init(c);
}
