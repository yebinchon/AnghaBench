
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_AUXTRACE_ERROR_MAX ;
 char** auxtrace_error_type_name ;

__attribute__((used)) static const char *auxtrace_error_name(int type)
{
 const char *error_type_name = ((void*)0);

 if (type < PERF_AUXTRACE_ERROR_MAX)
  error_type_name = auxtrace_error_type_name[type];
 if (!error_type_name)
  error_type_name = "unknown AUX";
 return error_type_name;
}
