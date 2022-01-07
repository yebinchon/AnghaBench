
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_avc {unsigned int avc_cache_threshold; } ;



unsigned int avc_get_cache_threshold(struct selinux_avc *avc)
{
 return avc->avc_cache_threshold;
}
