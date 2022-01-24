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
typedef  size_t u32 ;
struct tcf_t {int dummy; } ;
struct tc_cookie {int len; } ;
struct tc_action {int /*<<< orphan*/  act_cookie; } ;
struct gnet_stats_queue {int dummy; } ;
struct gnet_stats_basic {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 struct tc_cookie* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static size_t FUNC5(const struct tc_action *act)
{
	struct tc_cookie *act_cookie;
	u32 cookie_len = 0;

	FUNC3();
	act_cookie = FUNC2(act->act_cookie);

	if (act_cookie)
		cookie_len = FUNC0(act_cookie->len);
	FUNC4();

	return  FUNC0(0) /* action number nested */
		+ FUNC0(IFNAMSIZ) /* TCA_ACT_KIND */
		+ cookie_len /* TCA_ACT_COOKIE */
		+ FUNC0(0) /* TCA_ACT_STATS nested */
		/* TCA_STATS_BASIC */
		+ FUNC1(sizeof(struct gnet_stats_basic))
		/* TCA_STATS_QUEUE */
		+ FUNC1(sizeof(struct gnet_stats_queue))
		+ FUNC0(0) /* TCA_OPTIONS nested */
		+ FUNC0(sizeof(struct tcf_t)); /* TCA_GACT_TM */
}