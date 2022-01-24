#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kthread_create_info {int (* threadfn ) (void*) ;TYPE_1__* result; int /*<<< orphan*/  done; void* data; } ;
struct kthread {int /*<<< orphan*/  flags; int /*<<< orphan*/  exited; int /*<<< orphan*/  parked; void* data; } ;
struct completion {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * vfork_done; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOMEM ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KTHREAD_SHOULD_STOP ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct kthread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct completion*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kthread_create_info*) ; 
 struct kthread* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct kthread*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct completion* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void *_create)
{
	/* Copy data: it's on kthread's stack */
	struct kthread_create_info *create = _create;
	int (*threadfn)(void *data) = create->threadfn;
	void *data = create->data;
	struct completion *done;
	struct kthread *self;
	int ret;

	self = FUNC8(sizeof(*self), GFP_KERNEL);
	FUNC10(self);

	/* If user was SIGKILLed, I release the structure. */
	done = FUNC12(&create->done, NULL);
	if (!done) {
		FUNC7(create);
		FUNC5(-EINTR);
	}

	if (!self) {
		create->result = FUNC0(-ENOMEM);
		FUNC4(done);
		FUNC5(-ENOMEM);
	}

	self->data = data;
	FUNC6(&self->exited);
	FUNC6(&self->parked);
	current->vfork_done = &self->exited;

	/* OK, tell user we're spawned, wait for stop or wakeup */
	FUNC2(TASK_UNINTERRUPTIBLE);
	create->result = current;
	FUNC4(done);
	FUNC9();

	ret = -EINTR;
	if (!FUNC11(KTHREAD_SHOULD_STOP, &self->flags)) {
		FUNC3();
		FUNC1(self);
		ret = threadfn(data);
	}
	FUNC5(ret);
}