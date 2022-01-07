
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_item {int value; int name; } ;


 int free (struct perf_config_item*) ;
 int zfree (int *) ;

__attribute__((used)) static void perf_config_item__delete(struct perf_config_item *item)
{
 zfree(&item->name);
 zfree(&item->value);
 free(item);
}
