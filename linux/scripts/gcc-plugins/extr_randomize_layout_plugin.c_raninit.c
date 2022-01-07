
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_4__ {void* d; void* c; void* b; void* a; } ;
typedef TYPE_1__ ranctx ;


 int ranval (TYPE_1__*) ;

__attribute__((used)) static void raninit(ranctx *x, u64 *seed) {
 int i;

 x->a = seed[0];
 x->b = seed[1];
 x->c = seed[2];
 x->d = seed[3];

 for (i=0; i < 30; ++i)
  (void)ranval(x);
}
