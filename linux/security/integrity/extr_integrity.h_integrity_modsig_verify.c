
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int integrity_modsig_verify(unsigned int id,
       const struct modsig *modsig)
{
 return -EOPNOTSUPP;
}
