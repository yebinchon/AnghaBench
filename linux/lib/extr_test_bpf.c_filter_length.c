
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock_filter {scalar_t__ code; scalar_t__ k; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {struct sock_filter* insns; TYPE_1__ ptr; } ;
struct TYPE_6__ {TYPE_2__ u; scalar_t__ fill_helper; } ;


 int MAX_INSNS ;
 TYPE_3__* tests ;

__attribute__((used)) static int filter_length(int which)
{
 struct sock_filter *fp;
 int len;

 if (tests[which].fill_helper)
  return tests[which].u.ptr.len;

 fp = tests[which].u.insns;
 for (len = MAX_INSNS - 1; len > 0; --len)
  if (fp[len].code != 0 || fp[len].k != 0)
   break;

 return len + 1;
}
