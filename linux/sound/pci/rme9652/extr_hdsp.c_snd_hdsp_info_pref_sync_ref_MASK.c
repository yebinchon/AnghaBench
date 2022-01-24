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
struct hdsp {int io_type; } ;

/* Variables and functions */
#define  Digiface 131 
 int EINVAL ; 
#define  H9632 130 
#define  H9652 129 
#define  Multiface 128 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,char const* const*) ; 
 struct hdsp* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	static const char * const texts[] = {
		"Word", "IEC958", "ADAT1", "ADAT Sync", "ADAT2", "ADAT3"
	};
	struct hdsp *hdsp = FUNC1(kcontrol);
	int num_items;

	switch (hdsp->io_type) {
	case Digiface:
	case H9652:
		num_items = 6;
		break;
	case Multiface:
		num_items = 4;
		break;
	case H9632:
		num_items = 3;
		break;
	default:
		return -EINVAL;
	}

	return FUNC0(uinfo, 1, num_items, texts);
}