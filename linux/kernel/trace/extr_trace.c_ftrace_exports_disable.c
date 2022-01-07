
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ftrace_exports_enabled ;
 int static_branch_disable (int *) ;

__attribute__((used)) static inline void ftrace_exports_disable(void)
{
 static_branch_disable(&ftrace_exports_enabled);
}
