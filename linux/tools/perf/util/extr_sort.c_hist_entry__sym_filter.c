
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sym; } ;
struct hist_entry {TYPE_2__ ms; } ;
struct TYPE_3__ {int name; } ;


 int HIST_FILTER__SYMBOL ;
 int strstr (int ,char const*) ;

__attribute__((used)) static int hist_entry__sym_filter(struct hist_entry *he, int type, const void *arg)
{
 const char *sym = arg;

 if (type != HIST_FILTER__SYMBOL)
  return -1;

 return sym && (!he->ms.sym || !strstr(he->ms.sym->name, sym));
}
