
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rate_control_ref {int priv; TYPE_4__* ops; } ;
struct TYPE_7__ {TYPE_1__* wiphy; } ;
struct TYPE_6__ {struct dentry* rcdir; } ;
struct ieee80211_local {TYPE_3__ hw; TYPE_2__ debugfs; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int (* alloc ) (TYPE_3__*,struct dentry*) ;} ;
struct TYPE_5__ {int debugfsdir; } ;


 int GFP_KERNEL ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct rate_control_ref*,int *) ;
 TYPE_4__* ieee80211_rate_control_ops_get (char const*) ;
 int kfree (struct rate_control_ref*) ;
 struct rate_control_ref* kmalloc (int,int ) ;
 int rcname_ops ;
 int stub1 (TYPE_3__*,struct dentry*) ;

__attribute__((used)) static struct rate_control_ref *rate_control_alloc(const char *name,
         struct ieee80211_local *local)
{
 struct dentry *debugfsdir = ((void*)0);
 struct rate_control_ref *ref;

 ref = kmalloc(sizeof(struct rate_control_ref), GFP_KERNEL);
 if (!ref)
  return ((void*)0);
 ref->ops = ieee80211_rate_control_ops_get(name);
 if (!ref->ops)
  goto free;







 ref->priv = ref->ops->alloc(&local->hw, debugfsdir);
 if (!ref->priv)
  goto free;
 return ref;

free:
 kfree(ref);
 return ((void*)0);
}
