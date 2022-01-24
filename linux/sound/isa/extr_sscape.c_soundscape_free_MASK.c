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
struct soundscape {TYPE_1__* chip; int /*<<< orphan*/  wss_res; int /*<<< orphan*/  io_res; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct soundscape* FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_card *c)
{
	struct soundscape *sscape = FUNC1(c);
	FUNC2(sscape->io_res);
	FUNC2(sscape->wss_res);
	FUNC0(sscape->chip->dma1);
}