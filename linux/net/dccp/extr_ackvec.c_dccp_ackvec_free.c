
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec {int dummy; } ;


 int dccp_ackvec_purge_records (struct dccp_ackvec*) ;
 int dccp_ackvec_slab ;
 int kmem_cache_free (int ,struct dccp_ackvec*) ;
 scalar_t__ likely (int ) ;

void dccp_ackvec_free(struct dccp_ackvec *av)
{
 if (likely(av != ((void*)0))) {
  dccp_ackvec_purge_records(av);
  kmem_cache_free(dccp_ackvec_slab, av);
 }
}
