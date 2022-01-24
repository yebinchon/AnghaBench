#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_tplg {int /*<<< orphan*/  dev; scalar_t__ pos; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct soc_bytes_ext {long private_value; struct soc_bytes_ext* name; TYPE_2__ dobj; int /*<<< orphan*/  max; int /*<<< orphan*/  access; int /*<<< orphan*/  iface; } ;
struct snd_soc_tplg_ctl_hdr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  access; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct snd_soc_tplg_bytes_control {TYPE_3__ hdr; int /*<<< orphan*/  max; TYPE_1__ priv; } ;
struct snd_kcontrol_new {long private_value; struct snd_kcontrol_new* name; TYPE_2__ dobj; int /*<<< orphan*/  max; int /*<<< orphan*/  access; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct soc_bytes_ext* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_bytes_ext*) ; 
 struct soc_bytes_ext* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct soc_bytes_ext* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_tplg*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct soc_tplg*,struct soc_bytes_ext*,struct snd_soc_tplg_ctl_hdr*) ; 
 int FUNC10 (TYPE_3__*,struct soc_bytes_ext*,struct soc_tplg*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct snd_kcontrol_new *FUNC12(
	struct soc_tplg *tplg, int num_kcontrols)
{
	struct snd_soc_tplg_bytes_control *be;
	struct soc_bytes_ext *sbe;
	struct snd_kcontrol_new *kc;
	int i, err;

	kc = FUNC3(num_kcontrols, sizeof(*kc), GFP_KERNEL);
	if (!kc)
		return NULL;

	for (i = 0; i < num_kcontrols; i++) {
		be = (struct snd_soc_tplg_bytes_control *)tplg->pos;

		/* validate kcontrol */
		if (FUNC11(be->hdr.name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
			SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
			goto err_sbe;

		sbe = FUNC6(sizeof(*sbe), GFP_KERNEL);
		if (sbe == NULL)
			goto err_sbe;

		tplg->pos += (sizeof(struct snd_soc_tplg_bytes_control) +
			      FUNC7(be->priv.size));

		FUNC1(tplg->dev,
			"ASoC: adding bytes kcontrol %s with access 0x%x\n",
			be->hdr.name, be->hdr.access);

		kc[i].private_value = (long)sbe;
		kc[i].name = FUNC5(be->hdr.name, GFP_KERNEL);
		if (kc[i].name == NULL)
			goto err_sbe;
		kc[i].iface = SNDRV_CTL_ELEM_IFACE_MIXER;
		kc[i].access = be->hdr.access;

		sbe->max = be->max;
		FUNC0(&sbe->dobj.list);

		/* map standard io handlers and check for external handlers */
		err = FUNC10(&be->hdr, &kc[i], tplg);
		if (err) {
			FUNC8(tplg, &be->hdr, be->hdr.name);
			goto err_sbe;
		}

		/* pass control to driver for optional further init */
		err = FUNC9(tplg, &kc[i],
			(struct snd_soc_tplg_ctl_hdr *)be);
		if (err < 0) {
			FUNC2(tplg->dev, "ASoC: failed to init %s\n",
				be->hdr.name);
			goto err_sbe;
		}
	}

	return kc;

err_sbe:
	for (; i >= 0; i--) {
		sbe = (struct soc_bytes_ext *)kc[i].private_value;
		FUNC4(sbe);
		FUNC4(kc[i].name);
	}
	FUNC4(kc);

	return NULL;
}