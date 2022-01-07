
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_avc {unsigned int avc_cache_threshold; } ;



void avc_set_cache_threshold(struct selinux_avc *avc,
        unsigned int cache_threshold)
{
 avc->avc_cache_threshold = cache_threshold;
}
