
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gifconf_func_t ;


 int EINVAL ;
 unsigned int NPROTO ;
 int ** gifconf_list ;

int register_gifconf(unsigned int family, gifconf_func_t *gifconf)
{
 if (family >= NPROTO)
  return -EINVAL;
 gifconf_list[family] = gifconf;
 return 0;
}
