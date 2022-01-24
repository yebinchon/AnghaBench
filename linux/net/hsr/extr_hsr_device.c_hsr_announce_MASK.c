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
struct timer_list {int dummy; } ;
struct hsr_priv {int announce_count; scalar_t__ prot_version; int /*<<< orphan*/  announce_timer; } ;
struct hsr_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSR_ANNOUNCE_INTERVAL ; 
 int /*<<< orphan*/  HSR_LIFE_CHECK_INTERVAL ; 
 int /*<<< orphan*/  HSR_PT_MASTER ; 
 int /*<<< orphan*/  HSR_TLV_ANNOUNCE ; 
 int /*<<< orphan*/  HSR_TLV_LIFE_CHECK ; 
 int /*<<< orphan*/  announce_timer ; 
 struct hsr_priv* FUNC0 (struct hsr_priv*,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hsr_port* FUNC1 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct hsr_port*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct hsr_priv *hsr;
	struct hsr_port *master;
	unsigned long interval;

	hsr = FUNC0(hsr, t, announce_timer);

	FUNC5();
	master = FUNC1(hsr, HSR_PT_MASTER);

	if (hsr->announce_count < 3 && hsr->prot_version == 0) {
		FUNC7(master, HSR_TLV_ANNOUNCE,
					   hsr->prot_version);
		hsr->announce_count++;

		interval = FUNC4(HSR_ANNOUNCE_INTERVAL);
	} else {
		FUNC7(master, HSR_TLV_LIFE_CHECK,
					   hsr->prot_version);

		interval = FUNC4(HSR_LIFE_CHECK_INTERVAL);
	}

	if (FUNC2(master->dev))
		FUNC3(&hsr->announce_timer, jiffies + interval);

	FUNC6();
}