
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_cmd_control {int discard_cmd_cnt; int undiscard_blks; int root; int queued_discard; } ;
struct discard_cmd {scalar_t__ state; scalar_t__ len; int rb_node; int list; int queued; } ;


 scalar_t__ D_DONE ;
 int atomic_dec (int *) ;
 int atomic_sub (int ,int *) ;
 int discard_cmd_slab ;
 int kmem_cache_free (int ,struct discard_cmd*) ;
 int list_del (int *) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void __detach_discard_cmd(struct discard_cmd_control *dcc,
       struct discard_cmd *dc)
{
 if (dc->state == D_DONE)
  atomic_sub(dc->queued, &dcc->queued_discard);

 list_del(&dc->list);
 rb_erase_cached(&dc->rb_node, &dcc->root);
 dcc->undiscard_blks -= dc->len;

 kmem_cache_free(discard_cmd_slab, dc);

 atomic_dec(&dcc->discard_cmd_cnt);
}
