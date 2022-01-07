
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shrinker {int dummy; } ;
struct shrink_control {TYPE_1__* memcg; int nid; } ;
struct deferred_split {int split_queue_len; } ;
struct pglist_data {struct deferred_split deferred_split_queue; } ;
struct TYPE_2__ {struct deferred_split deferred_split_queue; } ;


 struct pglist_data* NODE_DATA (int ) ;
 unsigned long READ_ONCE (int ) ;

__attribute__((used)) static unsigned long deferred_split_count(struct shrinker *shrink,
  struct shrink_control *sc)
{
 struct pglist_data *pgdata = NODE_DATA(sc->nid);
 struct deferred_split *ds_queue = &pgdata->deferred_split_queue;





 return READ_ONCE(ds_queue->split_queue_len);
}
