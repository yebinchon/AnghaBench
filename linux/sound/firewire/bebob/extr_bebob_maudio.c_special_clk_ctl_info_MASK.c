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
 int FUNC1 (struct snd_ctl_elem_info*,int,int /*<<< orphan*/ ,char const* const*) ; 
 int /*<<< orphan*/  special_clk_types ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kctl,
				struct snd_ctl_elem_info *einf)
{
	static const char *const special_clk_labels[] = {
		"Internal with Digital Mute",
		"Digital",
		"Word Clock",
		"Internal"
	};
	return FUNC1(einf, 1, FUNC0(special_clk_types),
				 special_clk_labels);
}