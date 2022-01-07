
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cip_sfc { ____Placeholder_cip_sfc } cip_sfc ;



__attribute__((used)) static inline bool cip_sfc_is_base_44100(enum cip_sfc sfc)
{
 return sfc & 1;
}
