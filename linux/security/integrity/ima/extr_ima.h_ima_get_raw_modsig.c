
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct modsig {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int ima_get_raw_modsig(const struct modsig *modsig,
         const void **data, u32 *data_len)
{
 return -EOPNOTSUPP;
}
