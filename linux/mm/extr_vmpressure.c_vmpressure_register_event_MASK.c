#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmpressure_event {int level; int mode; int /*<<< orphan*/  node; struct eventfd_ctx* efd; } ;
struct vmpressure {int /*<<< orphan*/  events_lock; int /*<<< orphan*/  events; } ;
struct mem_cgroup {int dummy; } ;
struct eventfd_ctx {int dummy; } ;
typedef  enum vmpressure_modes { ____Placeholder_vmpressure_modes } vmpressure_modes ;
typedef  enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_VMPRESSURE_ARGS_LEN ; 
 int VMPRESSURE_NO_PASSTHROUGH ; 
 int /*<<< orphan*/  VMPRESSURE_NUM_LEVELS ; 
 int /*<<< orphan*/  VMPRESSURE_NUM_MODES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmpressure_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct vmpressure* FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  vmpressure_str_levels ; 
 int /*<<< orphan*/  vmpressure_str_modes ; 

int FUNC9(struct mem_cgroup *memcg,
			      struct eventfd_ctx *eventfd, const char *args)
{
	struct vmpressure *vmpr = FUNC5(memcg);
	struct vmpressure_event *ev;
	enum vmpressure_modes mode = VMPRESSURE_NO_PASSTHROUGH;
	enum vmpressure_levels level;
	char *spec, *spec_orig;
	char *token;
	int ret = 0;

	spec_orig = spec = FUNC1(args, MAX_VMPRESSURE_ARGS_LEN, GFP_KERNEL);
	if (!spec) {
		ret = -ENOMEM;
		goto out;
	}

	/* Find required level */
	token = FUNC8(&spec, ",");
	ret = FUNC4(vmpressure_str_levels, VMPRESSURE_NUM_LEVELS, token);
	if (ret < 0)
		goto out;
	level = ret;

	/* Find optional mode */
	token = FUNC8(&spec, ",");
	if (token) {
		ret = FUNC4(vmpressure_str_modes, VMPRESSURE_NUM_MODES, token);
		if (ret < 0)
			goto out;
		mode = ret;
	}

	ev = FUNC2(sizeof(*ev), GFP_KERNEL);
	if (!ev) {
		ret = -ENOMEM;
		goto out;
	}

	ev->efd = eventfd;
	ev->level = level;
	ev->mode = mode;

	FUNC6(&vmpr->events_lock);
	FUNC3(&ev->node, &vmpr->events);
	FUNC7(&vmpr->events_lock);
	ret = 0;
out:
	FUNC0(spec_orig);
	return ret;
}