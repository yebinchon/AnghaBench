
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int MAX_ORDER ;
 int PAGE_SIZE ;
 int get_order (unsigned long long) ;
 int ima_bufsize ;
 int ima_maxorder ;
 unsigned long long memparse (char const*,int *) ;

__attribute__((used)) static int param_set_bufsize(const char *val, const struct kernel_param *kp)
{
 unsigned long long size;
 int order;

 size = memparse(val, ((void*)0));
 order = get_order(size);
 if (order >= MAX_ORDER)
  return -EINVAL;
 ima_maxorder = order;
 ima_bufsize = PAGE_SIZE << order;
 return 0;
}
