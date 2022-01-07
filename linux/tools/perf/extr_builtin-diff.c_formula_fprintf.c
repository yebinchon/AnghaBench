
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;


 int BUG_ON (int) ;




 int compute ;
 int formula_delta (struct hist_entry*,struct hist_entry*,char*,size_t) ;
 int formula_ratio (struct hist_entry*,struct hist_entry*,char*,size_t) ;
 int formula_wdiff (struct hist_entry*,struct hist_entry*,char*,size_t) ;

__attribute__((used)) static int formula_fprintf(struct hist_entry *he, struct hist_entry *pair,
      char *buf, size_t size)
{
 switch (compute) {
 case 131:
 case 130:
  return formula_delta(he, pair, buf, size);
 case 129:
  return formula_ratio(he, pair, buf, size);
 case 128:
  return formula_wdiff(he, pair, buf, size);
 default:
  BUG_ON(1);
 }

 return -1;
}
