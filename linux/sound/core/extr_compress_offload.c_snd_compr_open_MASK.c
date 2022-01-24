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
struct TYPE_4__ {int direction; struct snd_compr_runtime* runtime; struct snd_compr* device; int /*<<< orphan*/  private_data; TYPE_1__* ops; int /*<<< orphan*/  error_work; } ;
struct snd_compr_runtime {TYPE_2__ stream; int /*<<< orphan*/  sleep; int /*<<< orphan*/  state; } ;
struct snd_compr_file {TYPE_2__ stream; int /*<<< orphan*/  sleep; int /*<<< orphan*/  state; } ;
struct snd_compr {int direction; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  private_data; } ;
struct inode {int dummy; } ;
struct file {int f_flags; void* private_data; } ;
typedef  enum snd_compr_direction { ____Placeholder_snd_compr_direction } snd_compr_direction ;
struct TYPE_3__ {int (* open ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int EBADFD ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_COMPRESS ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_OPEN ; 
 int SND_COMPRESS_CAPTURE ; 
 int SND_COMPRESS_PLAYBACK ; 
 int /*<<< orphan*/  error_delayed_work ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_compr_runtime*) ; 
 struct snd_compr_runtime* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct snd_compr* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int snd_major ; 
 int FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file *f)
{
	struct snd_compr *compr;
	struct snd_compr_file *data;
	struct snd_compr_runtime *runtime;
	enum snd_compr_direction dirn;
	int maj = FUNC1(inode);
	int ret;

	if ((f->f_flags & O_ACCMODE) == O_WRONLY)
		dirn = SND_COMPRESS_PLAYBACK;
	else if ((f->f_flags & O_ACCMODE) == O_RDONLY)
		dirn = SND_COMPRESS_CAPTURE;
	else
		return -EINVAL;

	if (maj == snd_major)
		compr = FUNC10(FUNC2(inode),
					SNDRV_DEVICE_TYPE_COMPRESS);
	else
		return -EBADFD;

	if (compr == NULL) {
		FUNC8("no device data!!!\n");
		return -ENODEV;
	}

	if (dirn != compr->direction) {
		FUNC8("this device doesn't support this direction\n");
		FUNC9(compr->card);
		return -EINVAL;
	}

	data = FUNC5(sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC9(compr->card);
		return -ENOMEM;
	}

	FUNC0(&data->stream.error_work, error_delayed_work);

	data->stream.ops = compr->ops;
	data->stream.direction = dirn;
	data->stream.private_data = compr->private_data;
	data->stream.device = compr;
	runtime = FUNC5(sizeof(*runtime), GFP_KERNEL);
	if (!runtime) {
		FUNC4(data);
		FUNC9(compr->card);
		return -ENOMEM;
	}
	runtime->state = SNDRV_PCM_STATE_OPEN;
	FUNC3(&runtime->sleep);
	data->stream.runtime = runtime;
	f->private_data = (void *)data;
	FUNC6(&compr->lock);
	ret = compr->ops->open(&data->stream);
	FUNC7(&compr->lock);
	if (ret) {
		FUNC4(runtime);
		FUNC4(data);
	}
	FUNC9(compr->card);
	return ret;
}