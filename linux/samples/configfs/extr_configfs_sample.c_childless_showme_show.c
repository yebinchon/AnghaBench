
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct childless {int showme; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct childless* to_childless (struct config_item*) ;

__attribute__((used)) static ssize_t childless_showme_show(struct config_item *item, char *page)
{
 struct childless *childless = to_childless(item);
 ssize_t pos;

 pos = sprintf(page, "%d\n", childless->showme);
 childless->showme++;

 return pos;
}
