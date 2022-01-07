
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_control_cache {struct hpi_control_cache* p_info; } ;


 int kfree (struct hpi_control_cache*) ;

void hpi_free_control_cache(struct hpi_control_cache *p_cache)
{
 if (p_cache) {
  kfree(p_cache->p_info);
  kfree(p_cache);
 }
}
