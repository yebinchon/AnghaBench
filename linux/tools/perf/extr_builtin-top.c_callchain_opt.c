
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct TYPE_2__ {int use_callchain; } ;


 int record_callchain_opt (struct option const*,char const*,int) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int
callchain_opt(const struct option *opt, const char *arg, int unset)
{
 symbol_conf.use_callchain = 1;
 return record_callchain_opt(opt, arg, unset);
}
