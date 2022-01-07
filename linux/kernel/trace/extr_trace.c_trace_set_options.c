
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int match_string (int ,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_tracer_flag (struct trace_array*,int,int) ;
 int set_tracer_option (struct trace_array*,char*,int) ;
 int str_has_prefix (char*,char*) ;
 size_t strlen (char*) ;
 char* strstrip (char*) ;
 int trace_options ;
 int trace_types_lock ;

__attribute__((used)) static int trace_set_options(struct trace_array *tr, char *option)
{
 char *cmp;
 int neg = 0;
 int ret;
 size_t orig_len = strlen(option);
 int len;

 cmp = strstrip(option);

 len = str_has_prefix(cmp, "no");
 if (len)
  neg = 1;

 cmp += len;

 mutex_lock(&trace_types_lock);

 ret = match_string(trace_options, -1, cmp);

 if (ret < 0)
  ret = set_tracer_option(tr, cmp, neg);
 else
  ret = set_tracer_flag(tr, 1 << ret, !neg);

 mutex_unlock(&trace_types_lock);





 if (orig_len > strlen(option))
  option[strlen(option)] = ' ';

 return ret;
}
