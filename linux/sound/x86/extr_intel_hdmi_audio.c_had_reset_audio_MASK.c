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
struct snd_intelhad {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_HDMI_STATUS ; 
 int /*<<< orphan*/  AUD_HDMI_STATUSG_MASK_FUNCRST ; 
 int /*<<< orphan*/  FUNC0 (struct snd_intelhad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_intelhad *intelhaddata)
{
	FUNC0(intelhaddata, AUD_HDMI_STATUS,
			   AUD_HDMI_STATUSG_MASK_FUNCRST);
	FUNC0(intelhaddata, AUD_HDMI_STATUS, 0);
}