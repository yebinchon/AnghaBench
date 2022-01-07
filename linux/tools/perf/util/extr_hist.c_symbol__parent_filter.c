
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct symbol {int dummy; } ;
struct TYPE_2__ {scalar_t__ exclude_other; } ;


 int HIST_FILTER__PARENT ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static u8 symbol__parent_filter(const struct symbol *parent)
{
 if (symbol_conf.exclude_other && parent == ((void*)0))
  return 1 << HIST_FILTER__PARENT;
 return 0;
}
