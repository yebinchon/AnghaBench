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
 int /*<<< orphan*/  line_phono_texts ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_info *uinfo)
{
	return FUNC0(uinfo, 1, 2, line_phono_texts);
}