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
struct ct_mixer {struct ct_mixer* amixers; void* sums; } ;

/* Variables and functions */
 int CHN_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_CT_AMIXERS ; 
 int NUM_CT_SUMS ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_mixer*) ; 
 struct ct_mixer* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ct_mixer **rmixer)
{
	struct ct_mixer *mixer;
	int err;

	*rmixer = NULL;
	/* Allocate mem for mixer obj */
	mixer = FUNC2(sizeof(*mixer), GFP_KERNEL);
	if (!mixer)
		return -ENOMEM;

	mixer->amixers = FUNC0(NUM_CT_AMIXERS * CHN_NUM, sizeof(void *),
				 GFP_KERNEL);
	if (!mixer->amixers) {
		err = -ENOMEM;
		goto error1;
	}
	mixer->sums = FUNC0(NUM_CT_SUMS * CHN_NUM, sizeof(void *),
			      GFP_KERNEL);
	if (!mixer->sums) {
		err = -ENOMEM;
		goto error2;
	}

	*rmixer = mixer;
	return 0;

error2:
	FUNC1(mixer->amixers);
error1:
	FUNC1(mixer);
	return err;
}