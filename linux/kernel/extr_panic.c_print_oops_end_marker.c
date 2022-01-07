
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_oops_id () ;
 scalar_t__ oops_id ;
 int pr_warn (char*,unsigned long long) ;

void print_oops_end_marker(void)
{
 init_oops_id();
 pr_warn("---[ end trace %016llx ]---\n", (unsigned long long)oops_id);
}
