
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int open_entry; } ;
struct dso {TYPE_1__ data; } ;


 int WARN_ONCE (int,char*) ;
 scalar_t__ dso__data_open_cnt ;
 int list_del_init (int *) ;

__attribute__((used)) static void dso__list_del(struct dso *dso)
{
 list_del_init(&dso->data.open_entry);
 WARN_ONCE(dso__data_open_cnt <= 0,
    "DSO data fd counter out of bounds.");
 dso__data_open_cnt--;
}
