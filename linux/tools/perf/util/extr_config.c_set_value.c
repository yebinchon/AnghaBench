
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_item {char* value; } ;


 char* strdup (char const*) ;
 int zfree (char**) ;

__attribute__((used)) static int set_value(struct perf_config_item *item, const char *value)
{
 char *val = strdup(value);

 if (!val)
  return -1;

 zfree(&item->value);
 item->value = val;
 return 0;
}
