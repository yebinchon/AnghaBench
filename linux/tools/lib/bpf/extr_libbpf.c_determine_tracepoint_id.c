
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;


 int E2BIG ;
 int PATH_MAX ;
 int errno ;
 int parse_uint_from_file (char*,char*) ;
 int pr_debug (char*,char const*,char const*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static int determine_tracepoint_id(const char *tp_category,
       const char *tp_name)
{
 char file[PATH_MAX];
 int ret;

 ret = snprintf(file, sizeof(file),
         "/sys/kernel/debug/tracing/events/%s/%s/id",
         tp_category, tp_name);
 if (ret < 0)
  return -errno;
 if (ret >= sizeof(file)) {
  pr_debug("tracepoint %s/%s path is too long\n",
    tp_category, tp_name);
  return -E2BIG;
 }
 return parse_uint_from_file(file, "%d\n");
}
