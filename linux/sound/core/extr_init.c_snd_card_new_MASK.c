#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  release; int /*<<< orphan*/  class; struct device* parent; } ;
struct snd_card {char* private_data; int number; TYPE_1__ card_dev; struct device* dev; int /*<<< orphan*/  irq_descr; int /*<<< orphan*/ ** dev_groups; int /*<<< orphan*/  remove_sleep; int /*<<< orphan*/  power_sleep; int /*<<< orphan*/  files_list; int /*<<< orphan*/  files_lock; int /*<<< orphan*/  ctl_files; int /*<<< orphan*/  controls; int /*<<< orphan*/  ctl_files_rwlock; int /*<<< orphan*/  controls_rwsem; int /*<<< orphan*/  devices; struct module* module; int /*<<< orphan*/  id; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SNDRV_CARDS ; 
 int /*<<< orphan*/  card_dev_attr_group ; 
 int /*<<< orphan*/  check_empty_slot ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_card*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 struct snd_card* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module_slot_match ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  release_card_device ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  snd_card_mutex ; 
 int /*<<< orphan*/  snd_cards_lock ; 
 int FUNC17 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_card*) ; 
 int snd_ecards_limit ; 
 int FUNC19 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  sound_class ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC23 (int,int /*<<< orphan*/ ) ; 

int FUNC24(struct device *parent, int idx, const char *xid,
		    struct module *module, int extra_size,
		    struct snd_card **card_ret)
{
	struct snd_card *card;
	int err;

	if (FUNC16(!card_ret))
		return -EINVAL;
	*card_ret = NULL;

	if (extra_size < 0)
		extra_size = 0;
	card = FUNC10(sizeof(*card) + extra_size, GFP_KERNEL);
	if (!card)
		return -ENOMEM;
	if (extra_size > 0)
		card->private_data = (char *)card + sizeof(struct snd_card);
	if (xid)
		FUNC22(card->id, xid, sizeof(card->id));
	err = 0;
	FUNC11(&snd_card_mutex);
	if (idx < 0) /* first check the matching module-name slot */
		idx = FUNC5(idx, module_slot_match, module);
	if (idx < 0) /* if not matched, assign an empty slot */
		idx = FUNC5(idx, check_empty_slot, module);
	if (idx < 0)
		err = -ENODEV;
	else if (idx < snd_ecards_limit) {
		if (FUNC23(idx, snd_cards_lock))
			err = -EBUSY;	/* invalid */
	} else if (idx >= SNDRV_CARDS)
		err = -ENODEV;
	if (err < 0) {
		FUNC12(&snd_card_mutex);
		FUNC2(parent, "cannot find the slot for index %d (range 0-%i), error: %d\n",
			 idx, snd_ecards_limit - 1, err);
		FUNC8(card);
		return err;
	}
	FUNC15(idx, snd_cards_lock);		/* lock it */
	if (idx >= snd_ecards_limit)
		snd_ecards_limit = idx + 1; /* increase the limit */
	FUNC12(&snd_card_mutex);
	card->dev = parent;
	card->number = idx;
	card->module = module;
	FUNC0(&card->devices);
	FUNC6(&card->controls_rwsem);
	FUNC14(&card->ctl_files_rwlock);
	FUNC0(&card->controls);
	FUNC0(&card->ctl_files);
	FUNC21(&card->files_lock);
	FUNC0(&card->files_list);
#ifdef CONFIG_PM
	init_waitqueue_head(&card->power_sleep);
#endif
	FUNC7(&card->remove_sleep);

	FUNC4(&card->card_dev);
	card->card_dev.parent = parent;
	card->card_dev.class = sound_class;
	card->card_dev.release = release_card_device;
	card->card_dev.groups = card->dev_groups;
	card->dev_groups[0] = &card_dev_attr_group;
	err = FUNC9(&card->card_dev.kobj, "card%d", idx);
	if (err < 0)
		goto __error;

	FUNC20(card->irq_descr, sizeof(card->irq_descr), "%s:%s",
		 FUNC1(card->dev), FUNC3(&card->card_dev));

	/* the control interface cannot be accessed from the user space until */
	/* snd_cards_bitmask and snd_cards are set with snd_card_register */
	err = FUNC17(card);
	if (err < 0) {
		FUNC2(parent, "unable to register control minors\n");
		goto __error;
	}
	err = FUNC19(card);
	if (err < 0) {
		FUNC2(parent, "unable to create card info\n");
		goto __error_ctl;
	}
	*card_ret = card;
	return 0;

      __error_ctl:
	FUNC18(card);
      __error:
	FUNC13(&card->card_dev);
  	return err;
}