
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ftrace_exports_enabled ;
 int static_branch_enable (int *) ;

__attribute__((used)) static inline void ftrace_exports_enable(void)
{
 static_branch_enable(&ftrace_exports_enabled);
}
