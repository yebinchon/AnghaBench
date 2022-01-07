
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec {int av_records; scalar_t__ av_buf_tail; scalar_t__ av_buf_head; } ;
typedef int gfp_t ;


 scalar_t__ DCCPAV_MAX_ACKVEC_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int dccp_ackvec_slab ;
 struct dccp_ackvec* kmem_cache_zalloc (int ,int const) ;

struct dccp_ackvec *dccp_ackvec_alloc(const gfp_t priority)
{
 struct dccp_ackvec *av = kmem_cache_zalloc(dccp_ackvec_slab, priority);

 if (av != ((void*)0)) {
  av->av_buf_head = av->av_buf_tail = DCCPAV_MAX_ACKVEC_LEN - 1;
  INIT_LIST_HEAD(&av->av_records);
 }
 return av;
}
