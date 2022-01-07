
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int sorted_by_name; } ;



void dso__set_sorted_by_name(struct dso *dso)
{
 dso->sorted_by_name = 1;
}
