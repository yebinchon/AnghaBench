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
typedef  int /*<<< orphan*/  u8 ;
struct beacon_data {int /*<<< orphan*/  csa_current_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static u8 FUNC1(struct beacon_data *beacon)
{
	beacon->csa_current_counter--;

	/* the counter should never reach 0 */
	FUNC0(!beacon->csa_current_counter);

	return beacon->csa_current_counter;
}