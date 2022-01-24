#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xt_tgchk_param {struct xt_led_info* targinfo; } ;
struct TYPE_2__ {struct xt_led_info_internal* name; } ;
struct xt_led_info_internal {int refcnt; struct xt_led_info_internal* trigger_id; int /*<<< orphan*/  list; int /*<<< orphan*/  timer; TYPE_1__ netfilter_led_trigger; } ;
struct xt_led_info {char* id; struct xt_led_info_internal* internal_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct xt_led_info_internal*) ; 
 struct xt_led_info_internal* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct xt_led_info_internal* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_timeout_callback ; 
 struct xt_led_info_internal* FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xt_led_mutex ; 
 int /*<<< orphan*/  xt_led_triggers ; 

__attribute__((used)) static int FUNC10(const struct xt_tgchk_param *par)
{
	struct xt_led_info *ledinfo = par->targinfo;
	struct xt_led_info_internal *ledinternal;
	int err;

	if (ledinfo->id[0] == '\0')
		return -EINVAL;

	FUNC6(&xt_led_mutex);

	ledinternal = FUNC3(ledinfo->id);
	if (ledinternal) {
		ledinternal->refcnt++;
		goto out;
	}

	err = -ENOMEM;
	ledinternal = FUNC2(sizeof(struct xt_led_info_internal), GFP_KERNEL);
	if (!ledinternal)
		goto exit_mutex_only;

	ledinternal->trigger_id = FUNC1(ledinfo->id, GFP_KERNEL);
	if (!ledinternal->trigger_id)
		goto exit_internal_alloc;

	ledinternal->refcnt = 1;
	ledinternal->netfilter_led_trigger.name = ledinternal->trigger_id;

	err = FUNC4(&ledinternal->netfilter_led_trigger);
	if (err) {
		FUNC8("Trigger name is already in use.\n");
		goto exit_alloc;
	}

	/* Since the letinternal timer can be shared between multiple targets,
	 * always set it up, even if the current target does not need it
	 */
	FUNC9(&ledinternal->timer, led_timeout_callback, 0);

	FUNC5(&ledinternal->list, &xt_led_triggers);

out:
	FUNC7(&xt_led_mutex);

	ledinfo->internal_data = ledinternal;

	return 0;

exit_alloc:
	FUNC0(ledinternal->trigger_id);

exit_internal_alloc:
	FUNC0(ledinternal);

exit_mutex_only:
	FUNC7(&xt_led_mutex);

	return err;
}