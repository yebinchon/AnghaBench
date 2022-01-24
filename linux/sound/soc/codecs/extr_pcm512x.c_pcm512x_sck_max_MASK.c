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
struct pcm512x_priv {int /*<<< orphan*/  pll_out; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct pcm512x_priv*) ; 

__attribute__((used)) static unsigned long FUNC1(struct pcm512x_priv *pcm512x)
{
	if (!pcm512x->pll_out)
		return 25000000;
	return FUNC0(pcm512x);
}