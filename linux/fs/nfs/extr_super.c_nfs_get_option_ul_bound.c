
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int ERANGE ;
 int nfs_get_option_ul (int *,unsigned long*) ;

__attribute__((used)) static int nfs_get_option_ul_bound(substring_t args[], unsigned long *option,
  unsigned long l_bound, unsigned long u_bound)
{
 int ret;

 ret = nfs_get_option_ul(args, option);
 if (ret != 0)
  return ret;
 if (*option < l_bound || *option > u_bound)
  return -ERANGE;
 return 0;
}
