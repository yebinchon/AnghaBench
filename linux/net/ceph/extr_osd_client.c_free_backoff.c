
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_backoff {int end; int begin; int id_node; int spg_node; } ;


 int RB_EMPTY_NODE (int *) ;
 int WARN_ON (int) ;
 int free_hoid (int ) ;
 int kfree (struct ceph_osd_backoff*) ;

__attribute__((used)) static void free_backoff(struct ceph_osd_backoff *backoff)
{
 WARN_ON(!RB_EMPTY_NODE(&backoff->spg_node));
 WARN_ON(!RB_EMPTY_NODE(&backoff->id_node));

 free_hoid(backoff->begin);
 free_hoid(backoff->end);
 kfree(backoff);
}
