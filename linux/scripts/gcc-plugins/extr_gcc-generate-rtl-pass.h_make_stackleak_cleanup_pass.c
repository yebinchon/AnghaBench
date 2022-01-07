
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opt_pass {int dummy; } ;
struct TYPE_2__ {struct opt_pass pass; } ;


 TYPE_1__ _PASS_NAME_PASS ;

struct opt_pass *_MAKE_PASS_NAME_PASS(void)
{
 return &_PASS_NAME_PASS.pass;
}
