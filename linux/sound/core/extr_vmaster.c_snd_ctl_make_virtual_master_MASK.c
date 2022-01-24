#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol_new {char* name; void* info; int /*<<< orphan*/  iface; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;
struct snd_kcontrol {TYPE_2__ tlv; TYPE_1__* vd; int /*<<< orphan*/  private_free; int /*<<< orphan*/  put; int /*<<< orphan*/  get; void* info; } ;
struct link_master {int /*<<< orphan*/  tlv; int /*<<< orphan*/  slaves; } ;
typedef  int /*<<< orphan*/  knew ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_TLV_READ ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 size_t SNDRV_CTL_TLVO_TYPE ; 
 unsigned int SNDRV_CTL_TLVT_DB_MINMAX ; 
 unsigned int SNDRV_CTL_TLVT_DB_MINMAX_MUTE ; 
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ; 
 int /*<<< orphan*/  FUNC1 (struct link_master*) ; 
 struct link_master* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_free ; 
 int /*<<< orphan*/  master_get ; 
 void* master_info ; 
 int /*<<< orphan*/  master_put ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_kcontrol_new*,int /*<<< orphan*/ ,int) ; 
 struct snd_kcontrol* FUNC5 (struct snd_kcontrol_new*,struct link_master*) ; 

struct snd_kcontrol *FUNC6(char *name,
						 const unsigned int *tlv)
{
	struct link_master *master;
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_new knew;

	FUNC4(&knew, 0, sizeof(knew));
	knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	knew.name = name;
	knew.info = master_info;

	master = FUNC2(sizeof(*master), GFP_KERNEL);
	if (!master)
		return NULL;
	FUNC0(&master->slaves);

	kctl = FUNC5(&knew, master);
	if (!kctl) {
		FUNC1(master);
		return NULL;
	}
	/* override some callbacks */
	kctl->info = master_info;
	kctl->get = master_get;
	kctl->put = master_put;
	kctl->private_free = master_free;

	/* additional (constant) TLV read */
	if (tlv) {
		unsigned int type = tlv[SNDRV_CTL_TLVO_TYPE];
		if (type == SNDRV_CTL_TLVT_DB_SCALE ||
		    type == SNDRV_CTL_TLVT_DB_MINMAX ||
		    type == SNDRV_CTL_TLVT_DB_MINMAX_MUTE) {
			kctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_TLV_READ;
			FUNC3(master->tlv, tlv, sizeof(master->tlv));
			kctl->tlv.p = master->tlv;
		}
	}

	return kctl;
}