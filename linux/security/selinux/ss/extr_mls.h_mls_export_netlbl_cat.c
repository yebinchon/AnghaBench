
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct context {int dummy; } ;


 int ENOMEM ;

__attribute__((used)) static inline int mls_export_netlbl_cat(struct policydb *p,
     struct context *context,
     struct netlbl_lsm_secattr *secattr)
{
 return -ENOMEM;
}
