
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* insns; } ;
struct TYPE_5__ {void* insns; TYPE_1__ ptr; } ;
struct TYPE_6__ {TYPE_2__ u; scalar_t__ fill_helper; } ;


 TYPE_3__* tests ;

__attribute__((used)) static void *filter_pointer(int which)
{
 if (tests[which].fill_helper)
  return tests[which].u.ptr.insns;
 else
  return tests[which].u.insns;
}
