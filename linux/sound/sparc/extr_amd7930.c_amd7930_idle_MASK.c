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
struct snd_amd7930 {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AMD7930_CR ; 
 scalar_t__ AMD7930_DR ; 
 int /*<<< orphan*/  AMR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __inline__ void FUNC3(struct snd_amd7930 *amd)
{
	unsigned long flags;

	FUNC1(&amd->lock, flags);
	FUNC0(AMR_INIT, amd->regs + AMD7930_CR);
	FUNC0(0, amd->regs + AMD7930_DR);
	FUNC2(&amd->lock, flags);
}