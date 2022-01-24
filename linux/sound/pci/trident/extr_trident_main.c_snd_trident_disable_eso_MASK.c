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
struct snd_trident {int dummy; } ;

/* Variables and functions */
 unsigned int ENDLP_IE ; 
 unsigned int MIDLP_IE ; 
 int /*<<< orphan*/  T4D_LFO_GC_CIR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_trident * trident)
{
	unsigned int tmp;

	tmp = FUNC1(FUNC0(trident, T4D_LFO_GC_CIR));
	tmp &= ~ENDLP_IE;
	tmp &= ~MIDLP_IE;
	FUNC2(tmp, FUNC0(trident, T4D_LFO_GC_CIR));
}