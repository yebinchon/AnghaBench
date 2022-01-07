
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int open_entry; } ;
struct dso {TYPE_1__ data; } ;


 int dso__data_open ;
 int dso__data_open_cnt ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void dso__list_add(struct dso *dso)
{
 list_add_tail(&dso->data.open_entry, &dso__data_open);
 dso__data_open_cnt++;
}
