#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_dbri {TYPE_1__* stream_info; } ;
struct snd_card {int /*<<< orphan*/  shortname; int /*<<< orphan*/  mixername; struct snd_dbri* private_data; } ;
struct TYPE_2__ {scalar_t__ right_gain; scalar_t__ left_gain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DBRI_NO_STREAMS ; 
 int DBRI_REC ; 
 int EINVAL ; 
 int /*<<< orphan*/ * dbri_controls ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_dbri*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card)
{
	int idx, err;
	struct snd_dbri *dbri;

	if (FUNC1(!card || !card->private_data))
		return -EINVAL;
	dbri = card->private_data;

	FUNC4(card->mixername, card->shortname);

	for (idx = 0; idx < FUNC0(dbri_controls); idx++) {
		err = FUNC2(card,
				FUNC3(&dbri_controls[idx], dbri));
		if (err < 0)
			return err;
	}

	for (idx = DBRI_REC; idx < DBRI_NO_STREAMS; idx++) {
		dbri->stream_info[idx].left_gain = 0;
		dbri->stream_info[idx].right_gain = 0;
	}

	return 0;
}