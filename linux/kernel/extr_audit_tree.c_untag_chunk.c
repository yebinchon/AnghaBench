
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int flags; } ;
struct audit_chunk {int hash; int trees; } ;
struct TYPE_2__ {int mark_mutex; } ;


 int FSNOTIFY_MARK_FLAG_ATTACHED ;
 struct audit_chunk* alloc_chunk (int) ;
 int audit_mark_put_chunk (struct audit_chunk*) ;
 TYPE_1__* audit_tree_group ;
 int chunk_count_trees (struct audit_chunk*) ;
 int fsnotify_detach_mark (struct fsnotify_mark*) ;
 int fsnotify_free_mark (struct fsnotify_mark*) ;
 int hash_lock ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 struct audit_chunk* mark_chunk (struct fsnotify_mark*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int replace_chunk (struct audit_chunk*,struct audit_chunk*) ;
 int replace_mark_chunk (struct fsnotify_mark*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void untag_chunk(struct audit_chunk *chunk, struct fsnotify_mark *mark)
{
 struct audit_chunk *new;
 int size;

 mutex_lock(&audit_tree_group->mark_mutex);




 if (!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED) ||
     mark_chunk(mark) != chunk)
  goto out_mutex;

 size = chunk_count_trees(chunk);
 if (!size) {
  spin_lock(&hash_lock);
  list_del_init(&chunk->trees);
  list_del_rcu(&chunk->hash);
  replace_mark_chunk(mark, ((void*)0));
  spin_unlock(&hash_lock);
  fsnotify_detach_mark(mark);
  mutex_unlock(&audit_tree_group->mark_mutex);
  audit_mark_put_chunk(chunk);
  fsnotify_free_mark(mark);
  return;
 }

 new = alloc_chunk(size);
 if (!new)
  goto out_mutex;

 spin_lock(&hash_lock);




 replace_chunk(new, chunk);
 spin_unlock(&hash_lock);
 mutex_unlock(&audit_tree_group->mark_mutex);
 audit_mark_put_chunk(chunk);
 return;

out_mutex:
 mutex_unlock(&audit_tree_group->mark_mutex);
}
