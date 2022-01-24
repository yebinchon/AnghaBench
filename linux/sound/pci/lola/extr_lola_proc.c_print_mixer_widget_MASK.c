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
struct snd_info_buffer {int dummy; } ;
struct lola {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOLA_PAR_AUDIO_WIDGET_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer,
			       struct lola *chip, int nid)
{
	unsigned int val;

	FUNC0(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
	FUNC1(buffer, "Node 0x%02x [Mixer] wcaps 0x%x\n", nid, val);
}