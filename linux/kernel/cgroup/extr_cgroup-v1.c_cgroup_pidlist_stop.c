
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {struct cgroup_pidlist* priv; } ;
struct cgroup_pidlist {int destroy_dwork; } ;
struct TYPE_4__ {TYPE_1__* cgroup; } ;
struct TYPE_3__ {int pidlist_mutex; } ;


 int CGROUP_PIDLIST_DESTROY_DELAY ;
 int cgroup_pidlist_destroy_wq ;
 int mod_delayed_work (int ,int *,int ) ;
 int mutex_unlock (int *) ;
 TYPE_2__* seq_css (struct seq_file*) ;

__attribute__((used)) static void cgroup_pidlist_stop(struct seq_file *s, void *v)
{
 struct kernfs_open_file *of = s->private;
 struct cgroup_pidlist *l = of->priv;

 if (l)
  mod_delayed_work(cgroup_pidlist_destroy_wq, &l->destroy_dwork,
     CGROUP_PIDLIST_DESTROY_DELAY);
 mutex_unlock(&seq_css(s)->cgroup->pidlist_mutex);
}
