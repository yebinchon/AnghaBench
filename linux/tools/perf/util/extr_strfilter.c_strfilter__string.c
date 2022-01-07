
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int root; } ;


 char* malloc (int) ;
 int strfilter_node__sprint (int ,char*) ;

char *strfilter__string(struct strfilter *filter)
{
 int len;
 char *ret = ((void*)0);

 len = strfilter_node__sprint(filter->root, ((void*)0));
 if (len < 0)
  return ((void*)0);

 ret = malloc(len + 1);
 if (ret)
  strfilter_node__sprint(filter->root, ret);

 return ret;
}
