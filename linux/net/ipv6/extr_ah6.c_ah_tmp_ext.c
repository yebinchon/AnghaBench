
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tmp_ext ;


 int IPV6HDR_BASELEN ;

__attribute__((used)) static inline struct tmp_ext *ah_tmp_ext(void *base)
{
 return base + IPV6HDR_BASELEN;
}
