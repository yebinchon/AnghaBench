
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpressure_event {int level; int mode; int node; struct eventfd_ctx* efd; } ;
struct vmpressure {int events_lock; int events; } ;
struct mem_cgroup {int dummy; } ;
struct eventfd_ctx {int dummy; } ;
typedef enum vmpressure_modes { ____Placeholder_vmpressure_modes } vmpressure_modes ;
typedef enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_VMPRESSURE_ARGS_LEN ;
 int VMPRESSURE_NO_PASSTHROUGH ;
 int VMPRESSURE_NUM_LEVELS ;
 int VMPRESSURE_NUM_MODES ;
 int kfree (char*) ;
 char* kstrndup (char const*,int ,int ) ;
 struct vmpressure_event* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int match_string (int ,int ,char*) ;
 struct vmpressure* memcg_to_vmpressure (struct mem_cgroup*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char* strsep (char**,char*) ;
 int vmpressure_str_levels ;
 int vmpressure_str_modes ;

int vmpressure_register_event(struct mem_cgroup *memcg,
         struct eventfd_ctx *eventfd, const char *args)
{
 struct vmpressure *vmpr = memcg_to_vmpressure(memcg);
 struct vmpressure_event *ev;
 enum vmpressure_modes mode = VMPRESSURE_NO_PASSTHROUGH;
 enum vmpressure_levels level;
 char *spec, *spec_orig;
 char *token;
 int ret = 0;

 spec_orig = spec = kstrndup(args, MAX_VMPRESSURE_ARGS_LEN, GFP_KERNEL);
 if (!spec) {
  ret = -ENOMEM;
  goto out;
 }


 token = strsep(&spec, ",");
 ret = match_string(vmpressure_str_levels, VMPRESSURE_NUM_LEVELS, token);
 if (ret < 0)
  goto out;
 level = ret;


 token = strsep(&spec, ",");
 if (token) {
  ret = match_string(vmpressure_str_modes, VMPRESSURE_NUM_MODES, token);
  if (ret < 0)
   goto out;
  mode = ret;
 }

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev) {
  ret = -ENOMEM;
  goto out;
 }

 ev->efd = eventfd;
 ev->level = level;
 ev->mode = mode;

 mutex_lock(&vmpr->events_lock);
 list_add(&ev->node, &vmpr->events);
 mutex_unlock(&vmpr->events_lock);
 ret = 0;
out:
 kfree(spec_orig);
 return ret;
}
