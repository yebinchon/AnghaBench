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
struct sfire_chip {struct pcm_runtime* pcm; } ;
struct pcm_runtime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_runtime*) ; 

void FUNC2(struct sfire_chip *chip)
{
	struct pcm_runtime *rt = chip->pcm;

	FUNC1(rt);
	FUNC0(rt);
	chip->pcm = NULL;
}