
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

int tracing_map_cmp_string(void *val_a, void *val_b)
{
 char *a = val_a;
 char *b = val_b;

 return strcmp(a, b);
}
