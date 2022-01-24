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
struct hdspm {TYPE_1__* midi; } ;
struct TYPE_2__ {int /*<<< orphan*/  statusIn; } ;

/* Variables and functions */
 int FUNC0 (struct hdspm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1 (struct hdspm *hdspm, int id)
{
	return FUNC0(hdspm, hdspm->midi[id].statusIn) & 0xFF;
}