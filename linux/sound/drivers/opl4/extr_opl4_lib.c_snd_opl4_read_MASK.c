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
typedef  int /*<<< orphan*/  u8 ;
struct snd_opl4 {scalar_t__ pcm_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl4*) ; 

u8 FUNC3(struct snd_opl4 *opl4, u8 reg)
{
	FUNC2(opl4);
	FUNC1(reg, opl4->pcm_port);

	FUNC2(opl4);
	return FUNC0(opl4->pcm_port + 1);
}