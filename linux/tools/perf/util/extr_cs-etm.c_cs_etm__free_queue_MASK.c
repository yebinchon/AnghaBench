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
struct cs_etm_queue {int /*<<< orphan*/  decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_etm_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_etm_queue*) ; 

__attribute__((used)) static void FUNC3(void *priv)
{
	struct cs_etm_queue *etmq = priv;

	if (!etmq)
		return;

	FUNC1(etmq->decoder);
	FUNC0(etmq);
	FUNC2(etmq);
}