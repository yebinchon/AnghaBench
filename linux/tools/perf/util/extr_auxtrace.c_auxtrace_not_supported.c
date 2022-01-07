
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int auxtrace_not_supported(void)
{
 pr_err("AUX area tracing is not supported on this architecture\n");
 return -EINVAL;
}
