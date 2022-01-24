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
struct atiixp_dma {int /*<<< orphan*/  substream; int /*<<< orphan*/  running; } ;
struct atiixp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct atiixp *chip, struct atiixp_dma *dma)
{
	if (! dma->substream || ! dma->running)
		return;
	FUNC0(dma->substream);
}