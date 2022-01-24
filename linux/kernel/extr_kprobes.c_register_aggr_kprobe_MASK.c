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
struct kprobe {int flags; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int KPROBE_FLAG_DISABLED ; 
 int KPROBE_FLAG_GONE ; 
 int FUNC0 (struct kprobe*,struct kprobe*) ; 
 struct kprobe* FUNC1 (struct kprobe*) ; 
 int FUNC2 (struct kprobe*) ; 
 int FUNC3 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe*,struct kprobe*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kprobe*,struct kprobe*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct kprobe*) ; 
 scalar_t__ FUNC11 (struct kprobe*) ; 
 scalar_t__ FUNC12 (struct kprobe*) ; 
 scalar_t__ FUNC13 (struct kprobe*) ; 
 int /*<<< orphan*/  kprobes_all_disarmed ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct kprobe*) ; 
 int FUNC18 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  text_mutex ; 

__attribute__((used)) static int FUNC20(struct kprobe *orig_p, struct kprobe *p)
{
	int ret = 0;
	struct kprobe *ap = orig_p;

	FUNC5();

	/* For preparing optimization, jump_label_text_reserved() is called */
	FUNC8();
	FUNC15(&text_mutex);

	if (!FUNC10(orig_p)) {
		/* If orig_p is not an aggr_kprobe, create new aggr_kprobe. */
		ap = FUNC1(orig_p);
		if (!ap) {
			ret = -ENOMEM;
			goto out;
		}
		FUNC7(ap, orig_p);
	} else if (FUNC13(ap)) {
		/* This probe is going to die. Rescue it */
		ret = FUNC18(ap);
		if (ret)
			goto out;
	}

	if (FUNC12(ap)) {
		/*
		 * Attempting to insert new probe at the same location that
		 * had a probe in the module vaddr area which already
		 * freed. So, the instruction slot has already been
		 * released. We need a new slot for the new probe.
		 */
		ret = FUNC2(ap);
		if (ret)
			/*
			 * Even if fail to allocate new slot, don't need to
			 * free aggr_probe. It will be used next time, or
			 * freed by unregister_kprobe.
			 */
			goto out;

		/* Prepare optimized instructions if possible. */
		FUNC17(ap);

		/*
		 * Clear gone flag to prevent allocating new slot again, and
		 * set disabled flag because it is not armed yet.
		 */
		ap->flags = (ap->flags & ~KPROBE_FLAG_GONE)
			    | KPROBE_FLAG_DISABLED;
	}

	/* Copy ap's insn slot to p */
	FUNC4(ap, p);
	ret = FUNC0(ap, p);

out:
	FUNC16(&text_mutex);
	FUNC9();
	FUNC6();

	if (ret == 0 && FUNC11(ap) && !FUNC11(p)) {
		ap->flags &= ~KPROBE_FLAG_DISABLED;
		if (!kprobes_all_disarmed) {
			/* Arm the breakpoint again. */
			ret = FUNC3(ap);
			if (ret) {
				ap->flags |= KPROBE_FLAG_DISABLED;
				FUNC14(&p->list);
				FUNC19();
			}
		}
	}
	return ret;
}