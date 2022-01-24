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
struct snd_opl4 {int /*<<< orphan*/  res_pcm_port; int /*<<< orphan*/  res_fm_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_opl4*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl4*) ; 

__attribute__((used)) static void FUNC3(struct snd_opl4 *opl4)
{
	FUNC2(opl4);
	FUNC1(opl4->res_fm_port);
	FUNC1(opl4->res_pcm_port);
	FUNC0(opl4);
}