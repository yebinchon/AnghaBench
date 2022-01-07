
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_lsm_secattr {int dummy; } ;
struct netlbl_calipso_ops {int (* cache_add ) (unsigned char const*,struct netlbl_lsm_secattr const*) ;} ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (unsigned char const*,struct netlbl_lsm_secattr const*) ;

int calipso_cache_add(const unsigned char *calipso_ptr,
        const struct netlbl_lsm_secattr *secattr)

{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->cache_add(calipso_ptr, secattr);
 return ret_val;
}
