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
struct snd_pcm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fh ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssi_irq ; 

__attribute__((used)) static void FUNC3(struct snd_pcm *pcm)
{
	FUNC1(ssi_irq, 0);
	FUNC2(&fh);
	FUNC0(pcm);
}