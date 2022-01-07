
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dso_to_list; int dso_from_list; int sym_to_list; int sym_from_list; int comm_list; int dso_list; int sym_list; } ;
typedef int FILE ;
 scalar_t__ SORT_MODE__BRANCH ;
 int __get_elide (int ,char*,int *) ;
 scalar_t__ sort__mode ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static bool get_elide(int idx, FILE *output)
{
 switch (idx) {
 case 130:
  return __get_elide(symbol_conf.sym_list, "symbol", output);
 case 133:
  return __get_elide(symbol_conf.dso_list, "dso", output);
 case 134:
  return __get_elide(symbol_conf.comm_list, "comm", output);
 default:
  break;
 }

 if (sort__mode != SORT_MODE__BRANCH)
  return 0;

 switch (idx) {
 case 129:
  return __get_elide(symbol_conf.sym_from_list, "sym_from", output);
 case 128:
  return __get_elide(symbol_conf.sym_to_list, "sym_to", output);
 case 132:
  return __get_elide(symbol_conf.dso_from_list, "dso_from", output);
 case 131:
  return __get_elide(symbol_conf.dso_to_list, "dso_to", output);
 default:
  break;
 }

 return 0;
}
