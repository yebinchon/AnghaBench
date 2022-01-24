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
struct snd_akm4xxx {scalar_t__ type; int num_dacs; } ;

/* Variables and functions */
 scalar_t__ SND_AK4355 ; 
 scalar_t__ SND_AK4358 ; 
 scalar_t__ SND_AK4620 ; 
 int FUNC0 (struct snd_akm4xxx*) ; 
 int FUNC1 (struct snd_akm4xxx*) ; 
 int FUNC2 (struct snd_akm4xxx*,int) ; 
 int FUNC3 (struct snd_akm4xxx*) ; 

int FUNC4(struct snd_akm4xxx *ak)
{
	int err, num_emphs;

	err = FUNC1(ak);
	if (err < 0)
		return err;

	err = FUNC0(ak);
	if (err < 0)
		return err;
	if (ak->type == SND_AK4355 || ak->type == SND_AK4358)
		num_emphs = 1;
	else if (ak->type == SND_AK4620)
		num_emphs = 0;
	else
		num_emphs = ak->num_dacs / 2;
	err = FUNC2(ak, num_emphs);
	if (err < 0)
		return err;
	err = FUNC3(ak);
	if (err < 0)
		return err;

	return 0;
}