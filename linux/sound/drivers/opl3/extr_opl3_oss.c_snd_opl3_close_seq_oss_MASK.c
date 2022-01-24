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
struct snd_seq_oss_arg {struct snd_opl3* private_data; } ;
struct snd_opl3 {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_opl3*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl3*) ; 

__attribute__((used)) static int FUNC3(struct snd_seq_oss_arg *arg)
{
	struct snd_opl3 *opl3;

	if (FUNC0(!arg))
		return -ENXIO;
	opl3 = arg->private_data;

	FUNC1(opl3);

	FUNC2(opl3);
	return 0;
}