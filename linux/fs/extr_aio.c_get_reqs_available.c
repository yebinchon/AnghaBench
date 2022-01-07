
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int dummy; } ;


 int __get_reqs_available (struct kioctx*) ;
 int user_refill_reqs_available (struct kioctx*) ;

__attribute__((used)) static bool get_reqs_available(struct kioctx *ctx)
{
 if (__get_reqs_available(ctx))
  return 1;
 user_refill_reqs_available(ctx);
 return __get_reqs_available(ctx);
}
