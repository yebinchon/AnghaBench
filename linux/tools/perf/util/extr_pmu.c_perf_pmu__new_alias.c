
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int EINVAL ;
 int __perf_pmu__new_alias (struct list_head*,char*,char*,int *,char*,int *,int *,int *,int *,int *,int *) ;
 int fread (char*,int,int,int *) ;
 int strim (char*) ;

__attribute__((used)) static int perf_pmu__new_alias(struct list_head *list, char *dir, char *name, FILE *file)
{
 char buf[256];
 int ret;

 ret = fread(buf, 1, sizeof(buf), file);
 if (ret == 0)
  return -EINVAL;

 buf[ret] = 0;


 strim(buf);

 return __perf_pmu__new_alias(list, dir, name, ((void*)0), buf, ((void*)0), ((void*)0), ((void*)0),
         ((void*)0), ((void*)0), ((void*)0));
}
