
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_page_frag {int f_cache_entry; int f_sg; } ;
struct rds_ib_connection {int i_cache_allocs; int i_cache_frags; } ;


 int RDS_FRAG_SIZE ;
 int SZ_1K ;
 int atomic_add (int,int *) ;
 int rds_ib_recv_cache_put (int *,int *) ;
 int rds_ib_stats_add (int ,int) ;
 int rdsdebug (char*,struct rds_page_frag*,int ) ;
 int s_ib_recv_added_to_cache ;
 int sg_page (int *) ;

__attribute__((used)) static void rds_ib_frag_free(struct rds_ib_connection *ic,
        struct rds_page_frag *frag)
{
 rdsdebug("frag %p page %p\n", frag, sg_page(&frag->f_sg));

 rds_ib_recv_cache_put(&frag->f_cache_entry, &ic->i_cache_frags);
 atomic_add(RDS_FRAG_SIZE / SZ_1K, &ic->i_cache_allocs);
 rds_ib_stats_add(s_ib_recv_added_to_cache, RDS_FRAG_SIZE);
}
