
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {int a; int b; int c; int d; } ;
typedef TYPE_1__ ranctx ;


 int rot (int,int) ;

__attribute__((used)) static u64 ranval(ranctx *x) {
 u64 e = x->a - rot(x->b, 7);
 x->a = x->b ^ rot(x->c, 13);
 x->b = x->c + rot(x->d, 37);
 x->c = x->d + e;
 x->d = e + x->a;
 return x->d;
}
