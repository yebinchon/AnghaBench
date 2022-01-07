
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ftrace_ops_list_func (unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static void ftrace_ops_no_ops(unsigned long ip, unsigned long parent_ip)
{
 __ftrace_ops_list_func(ip, parent_ip, ((void*)0), ((void*)0));
}
