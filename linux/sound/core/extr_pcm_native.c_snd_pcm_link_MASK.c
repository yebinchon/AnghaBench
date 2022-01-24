#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_group* group; TYPE_3__* pcm; TYPE_2__* runtime; } ;
struct snd_pcm_group {int /*<<< orphan*/  refs; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct fd {TYPE_4__* file; } ;
struct TYPE_8__ {struct snd_pcm_file* private_data; } ;
struct TYPE_7__ {int nonatomic; } ;
struct TYPE_6__ {TYPE_1__* status; } ;
struct TYPE_5__ {scalar_t__ state; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBADFD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fd FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_group*) ; 
 struct snd_pcm_group* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*,struct snd_pcm_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_group*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_group*,int) ; 
 int /*<<< orphan*/  snd_pcm_link_rwsem ; 
 scalar_t__ FUNC11 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct snd_pcm_substream *substream, int fd)
{
	int res = 0;
	struct snd_pcm_file *pcm_file;
	struct snd_pcm_substream *substream1;
	struct snd_pcm_group *group, *target_group;
	bool nonatomic = substream->pcm->nonatomic;
	struct fd f = FUNC1(fd);

	if (!f.file)
		return -EBADFD;
	if (!FUNC3(f.file)) {
		res = -EBADFD;
		goto _badf;
	}
	pcm_file = f.file->private_data;
	substream1 = pcm_file->substream;
	group = FUNC5(sizeof(*group), GFP_KERNEL);
	if (!group) {
		res = -ENOMEM;
		goto _nolock;
	}
	FUNC8(group);

	FUNC0(&snd_pcm_link_rwsem);
	if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN ||
	    substream->runtime->status->state != substream1->runtime->status->state ||
	    substream->pcm->nonatomic != substream1->pcm->nonatomic) {
		res = -EBADFD;
		goto _end;
	}
	if (FUNC11(substream1)) {
		res = -EALREADY;
		goto _end;
	}

	FUNC13(substream);
	if (!FUNC11(substream)) {
		FUNC7(substream, group);
		group = NULL; /* assigned, don't free this one below */
	}
	target_group = substream->group;
	FUNC15(substream);

	FUNC9(target_group, nonatomic);
	FUNC12(substream1);
	FUNC7(substream1, target_group);
	FUNC6(&target_group->refs);
	FUNC14(substream1);
	FUNC10(target_group, nonatomic);
 _end:
	FUNC16(&snd_pcm_link_rwsem);
 _nolock:
	FUNC4(group);
 _badf:
	FUNC2(f);
	return res;
}