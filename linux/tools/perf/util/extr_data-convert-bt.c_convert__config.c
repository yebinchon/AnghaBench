
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct convert {int queue_size; } ;


 int perf_config_u64 (int *,char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int convert__config(const char *var, const char *value, void *cb)
{
 struct convert *c = cb;

 if (!strcmp(var, "convert.queue-size"))
  return perf_config_u64(&c->queue_size, var, value);

 return 0;
}
