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
struct snd_rawmidi {struct fw_scs1x* private_data; } ;
struct fw_scs1x {int /*<<< orphan*/  hss_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct snd_rawmidi *rmidi)
{
	struct fw_scs1x *scs = rmidi->private_data;

	FUNC0(&scs->hss_handler);
}