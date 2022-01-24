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
struct snd_kcontrol {int dummy; } ;
struct link_master {void (* hook ) (void*,int) ;void* hook_private_data; } ;

/* Variables and functions */
 struct link_master* FUNC0 (struct snd_kcontrol*) ; 

int FUNC1(struct snd_kcontrol *kcontrol,
			     void (*hook)(void *private_data, int),
			     void *private_data)
{
	struct link_master *master = FUNC0(kcontrol);
	master->hook = hook;
	master->hook_private_data = private_data;
	return 0;
}