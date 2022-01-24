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
struct snd_ctl_elem_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ctl_elem_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  special_dig_out_iface_labels ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kctl,
					  struct snd_ctl_elem_info *einf)
{
	return FUNC1(einf, 1,
				 FUNC0(special_dig_out_iface_labels),
				 special_dig_out_iface_labels);
}