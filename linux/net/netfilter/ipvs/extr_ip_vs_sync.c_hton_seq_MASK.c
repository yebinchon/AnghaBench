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
struct ip_vs_seq {int /*<<< orphan*/  previous_delta; int /*<<< orphan*/  delta; int /*<<< orphan*/  init_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ip_vs_seq *ho, struct ip_vs_seq *no)
{
	FUNC0(ho->init_seq, &no->init_seq);
	FUNC0(ho->delta, &no->delta);
	FUNC0(ho->previous_delta, &no->previous_delta);
}