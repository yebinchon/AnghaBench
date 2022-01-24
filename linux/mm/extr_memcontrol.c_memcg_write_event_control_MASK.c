#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup_event {int (* register_event ) (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ;struct cgroup_subsys_state* eventfd; int /*<<< orphan*/  list; int /*<<< orphan*/  pt; int /*<<< orphan*/  unregister_event; int /*<<< orphan*/  remove; int /*<<< orphan*/  wait; struct mem_cgroup* memcg; } ;
struct mem_cgroup {int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  event_list; } ;
struct kernfs_open_file {int dummy; } ;
struct fd {TYPE_4__* file; } ;
struct cgroup_subsys_state {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct TYPE_10__ {TYPE_3__ f_path; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 int EBADF ; 
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int FUNC3 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup_subsys_state*) ; 
 struct cgroup_subsys_state* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cgroup_subsys_state* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct cgroup_subsys_state*) ; 
 struct fd FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct fd) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mem_cgroup_event*) ; 
 struct mem_cgroup_event* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC17 (struct cgroup_subsys_state*) ; 
 int FUNC18 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ; 
 int /*<<< orphan*/  mem_cgroup_oom_unregister_event ; 
 int FUNC19 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ; 
 int /*<<< orphan*/  mem_cgroup_usage_unregister_event ; 
 int /*<<< orphan*/  memcg_event_ptable_queue_proc ; 
 int /*<<< orphan*/  memcg_event_remove ; 
 int /*<<< orphan*/  memcg_event_wake ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 int FUNC20 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ; 
 int /*<<< orphan*/  memsw_cgroup_usage_unregister_event ; 
 struct cgroup_subsys_state* FUNC21 (struct kernfs_open_file*) ; 
 unsigned int FUNC22 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*) ; 
 char* FUNC26 (char*) ; 
 int FUNC27 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC29 (struct mem_cgroup*,struct cgroup_subsys_state*,char*) ; 
 int /*<<< orphan*/  vmpressure_unregister_event ; 

__attribute__((used)) static ssize_t FUNC30(struct kernfs_open_file *of,
					 char *buf, size_t nbytes, loff_t off)
{
	struct cgroup_subsys_state *css = FUNC21(of);
	struct mem_cgroup *memcg = FUNC17(css);
	struct mem_cgroup_event *event;
	struct cgroup_subsys_state *cfile_css;
	unsigned int efd, cfd;
	struct fd efile;
	struct fd cfile;
	const char *name;
	char *endp;
	int ret;

	buf = FUNC26(buf);

	efd = FUNC22(buf, &endp, 10);
	if (*endp != ' ')
		return -EINVAL;
	buf = endp + 1;

	cfd = FUNC22(buf, &endp, 10);
	if ((*endp != ' ') && (*endp != '\0'))
		return -EINVAL;
	buf = endp + 1;

	event = FUNC15(sizeof(*event), GFP_KERNEL);
	if (!event)
		return -ENOMEM;

	event->memcg = memcg;
	FUNC0(&event->list);
	FUNC11(&event->pt, memcg_event_ptable_queue_proc);
	FUNC12(&event->wait, memcg_event_wake);
	FUNC1(&event->remove, memcg_event_remove);

	efile = FUNC8(efd);
	if (!efile.file) {
		ret = -EBADF;
		goto out_kfree;
	}

	event->eventfd = FUNC6(efile.file);
	if (FUNC2(event->eventfd)) {
		ret = FUNC3(event->eventfd);
		goto out_put_efile;
	}

	cfile = FUNC8(cfd);
	if (!cfile.file) {
		ret = -EBADF;
		goto out_put_eventfd;
	}

	/* the process need read permission on control file */
	/* AV: shouldn't we check that it's been opened for read instead? */
	ret = FUNC13(FUNC10(cfile.file), MAY_READ);
	if (ret < 0)
		goto out_put_cfile;

	/*
	 * Determine the event callbacks and set them in @event.  This used
	 * to be done via struct cftype but cgroup core no longer knows
	 * about these events.  The following is crude but the whole thing
	 * is for compatibility anyway.
	 *
	 * DO NOT ADD NEW FILES.
	 */
	name = cfile.file->f_path.dentry->d_name.name;

	if (!FUNC25(name, "memory.usage_in_bytes")) {
		event->register_event = mem_cgroup_usage_register_event;
		event->unregister_event = mem_cgroup_usage_unregister_event;
	} else if (!FUNC25(name, "memory.oom_control")) {
		event->register_event = mem_cgroup_oom_register_event;
		event->unregister_event = mem_cgroup_oom_unregister_event;
	} else if (!FUNC25(name, "memory.pressure_level")) {
		event->register_event = vmpressure_register_event;
		event->unregister_event = vmpressure_unregister_event;
	} else if (!FUNC25(name, "memory.memsw.usage_in_bytes")) {
		event->register_event = memsw_cgroup_usage_register_event;
		event->unregister_event = memsw_cgroup_usage_unregister_event;
	} else {
		ret = -EINVAL;
		goto out_put_cfile;
	}

	/*
	 * Verify @cfile should belong to @css.  Also, remaining events are
	 * automatically removed on cgroup destruction but the removal is
	 * asynchronous, so take an extra ref on @css.
	 */
	cfile_css = FUNC5(cfile.file->f_path.dentry->d_parent,
					       &memory_cgrp_subsys);
	ret = -EINVAL;
	if (FUNC2(cfile_css))
		goto out_put_cfile;
	if (cfile_css != css) {
		FUNC4(cfile_css);
		goto out_put_cfile;
	}

	ret = event->register_event(memcg, event->eventfd, buf);
	if (ret)
		goto out_put_css;

	FUNC28(efile.file, &event->pt);

	FUNC23(&memcg->event_list_lock);
	FUNC16(&event->list, &memcg->event_list);
	FUNC24(&memcg->event_list_lock);

	FUNC9(cfile);
	FUNC9(efile);

	return nbytes;

out_put_css:
	FUNC4(css);
out_put_cfile:
	FUNC9(cfile);
out_put_eventfd:
	FUNC7(event->eventfd);
out_put_efile:
	FUNC9(efile);
out_kfree:
	FUNC14(event);

	return ret;
}