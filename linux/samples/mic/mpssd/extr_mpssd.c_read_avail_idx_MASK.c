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
struct mic_vring {TYPE_1__* info; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  avail_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u16 FUNC1(struct mic_vring *vr)
{
	return FUNC0(vr->info->avail_idx);
}