
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mem_cgroup_event {int (* register_event ) (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;struct cgroup_subsys_state* eventfd; int list; int pt; int unregister_event; int remove; int wait; struct mem_cgroup* memcg; } ;
struct mem_cgroup {int event_list_lock; int event_list; } ;
struct kernfs_open_file {int dummy; } ;
struct fd {TYPE_4__* file; } ;
struct cgroup_subsys_state {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct TYPE_10__ {TYPE_3__ f_path; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {int d_parent; TYPE_1__ d_name; } ;


 int EBADF ;
 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct cgroup_subsys_state*) ;
 int MAY_READ ;
 int PTR_ERR (struct cgroup_subsys_state*) ;
 int css_put (struct cgroup_subsys_state*) ;
 struct cgroup_subsys_state* css_tryget_online_from_dir (int ,int *) ;
 struct cgroup_subsys_state* eventfd_ctx_fileget (TYPE_4__*) ;
 int eventfd_ctx_put (struct cgroup_subsys_state*) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int file_inode (TYPE_4__*) ;
 int init_poll_funcptr (int *,int ) ;
 int init_waitqueue_func_entry (int *,int ) ;
 int inode_permission (int ,int ) ;
 int kfree (struct mem_cgroup_event*) ;
 struct mem_cgroup_event* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mem_cgroup* mem_cgroup_from_css (struct cgroup_subsys_state*) ;
 int mem_cgroup_oom_register_event (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;
 int mem_cgroup_oom_unregister_event ;
 int mem_cgroup_usage_register_event (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;
 int mem_cgroup_usage_unregister_event ;
 int memcg_event_ptable_queue_proc ;
 int memcg_event_remove ;
 int memcg_event_wake ;
 int memory_cgrp_subsys ;
 int memsw_cgroup_usage_register_event (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;
 int memsw_cgroup_usage_unregister_event ;
 struct cgroup_subsys_state* of_css (struct kernfs_open_file*) ;
 unsigned int simple_strtoul (char*,char**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (char const*,char*) ;
 char* strstrip (char*) ;
 int stub1 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;
 int vfs_poll (TYPE_4__*,int *) ;
 int vmpressure_register_event (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;
 int vmpressure_unregister_event ;

__attribute__((used)) static ssize_t memcg_write_event_control(struct kernfs_open_file *of,
      char *buf, size_t nbytes, loff_t off)
{
 struct cgroup_subsys_state *css = of_css(of);
 struct mem_cgroup *memcg = mem_cgroup_from_css(css);
 struct mem_cgroup_event *event;
 struct cgroup_subsys_state *cfile_css;
 unsigned int efd, cfd;
 struct fd efile;
 struct fd cfile;
 const char *name;
 char *endp;
 int ret;

 buf = strstrip(buf);

 efd = simple_strtoul(buf, &endp, 10);
 if (*endp != ' ')
  return -EINVAL;
 buf = endp + 1;

 cfd = simple_strtoul(buf, &endp, 10);
 if ((*endp != ' ') && (*endp != '\0'))
  return -EINVAL;
 buf = endp + 1;

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 event->memcg = memcg;
 INIT_LIST_HEAD(&event->list);
 init_poll_funcptr(&event->pt, memcg_event_ptable_queue_proc);
 init_waitqueue_func_entry(&event->wait, memcg_event_wake);
 INIT_WORK(&event->remove, memcg_event_remove);

 efile = fdget(efd);
 if (!efile.file) {
  ret = -EBADF;
  goto out_kfree;
 }

 event->eventfd = eventfd_ctx_fileget(efile.file);
 if (IS_ERR(event->eventfd)) {
  ret = PTR_ERR(event->eventfd);
  goto out_put_efile;
 }

 cfile = fdget(cfd);
 if (!cfile.file) {
  ret = -EBADF;
  goto out_put_eventfd;
 }



 ret = inode_permission(file_inode(cfile.file), MAY_READ);
 if (ret < 0)
  goto out_put_cfile;
 name = cfile.file->f_path.dentry->d_name.name;

 if (!strcmp(name, "memory.usage_in_bytes")) {
  event->register_event = mem_cgroup_usage_register_event;
  event->unregister_event = mem_cgroup_usage_unregister_event;
 } else if (!strcmp(name, "memory.oom_control")) {
  event->register_event = mem_cgroup_oom_register_event;
  event->unregister_event = mem_cgroup_oom_unregister_event;
 } else if (!strcmp(name, "memory.pressure_level")) {
  event->register_event = vmpressure_register_event;
  event->unregister_event = vmpressure_unregister_event;
 } else if (!strcmp(name, "memory.memsw.usage_in_bytes")) {
  event->register_event = memsw_cgroup_usage_register_event;
  event->unregister_event = memsw_cgroup_usage_unregister_event;
 } else {
  ret = -EINVAL;
  goto out_put_cfile;
 }






 cfile_css = css_tryget_online_from_dir(cfile.file->f_path.dentry->d_parent,
            &memory_cgrp_subsys);
 ret = -EINVAL;
 if (IS_ERR(cfile_css))
  goto out_put_cfile;
 if (cfile_css != css) {
  css_put(cfile_css);
  goto out_put_cfile;
 }

 ret = event->register_event(memcg, event->eventfd, buf);
 if (ret)
  goto out_put_css;

 vfs_poll(efile.file, &event->pt);

 spin_lock(&memcg->event_list_lock);
 list_add(&event->list, &memcg->event_list);
 spin_unlock(&memcg->event_list_lock);

 fdput(cfile);
 fdput(efile);

 return nbytes;

out_put_css:
 css_put(css);
out_put_cfile:
 fdput(cfile);
out_put_eventfd:
 eventfd_ctx_put(event->eventfd);
out_put_efile:
 fdput(efile);
out_kfree:
 kfree(event);

 return ret;
}
