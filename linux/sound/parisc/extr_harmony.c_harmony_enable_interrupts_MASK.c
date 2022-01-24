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
typedef  int /*<<< orphan*/  u32 ;
struct snd_harmony {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARMONY_DSTATUS ; 
 int /*<<< orphan*/  HARMONY_DSTATUS_IE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_harmony*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct snd_harmony *h)
{
	u32 dstatus;
	FUNC1(h);
	dstatus = FUNC0(h, HARMONY_DSTATUS);
	dstatus |= HARMONY_DSTATUS_IE;
	FUNC2(h, HARMONY_DSTATUS, dstatus);
}