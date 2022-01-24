#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct snd_compr_runtime* runtime; TYPE_1__* ops; int /*<<< orphan*/  error_work; } ;
struct snd_compr_runtime {int state; TYPE_2__ stream; struct snd_compr_runtime* buffer; int /*<<< orphan*/  dma_buffer_p; } ;
struct snd_compr_file {int state; TYPE_2__ stream; struct snd_compr_file* buffer; int /*<<< orphan*/  dma_buffer_p; } ;
struct inode {int dummy; } ;
struct file {struct snd_compr_runtime* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;int /*<<< orphan*/  (* trigger ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  SNDRV_PCM_STATE_DRAINING 130 
#define  SNDRV_PCM_STATE_PAUSED 129 
#define  SNDRV_PCM_STATE_RUNNING 128 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_compr_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *f)
{
	struct snd_compr_file *data = f->private_data;
	struct snd_compr_runtime *runtime = data->stream.runtime;

	FUNC0(&data->stream.error_work);

	switch (runtime->state) {
	case SNDRV_PCM_STATE_RUNNING:
	case SNDRV_PCM_STATE_DRAINING:
	case SNDRV_PCM_STATE_PAUSED:
		data->stream.ops->trigger(&data->stream, SNDRV_PCM_TRIGGER_STOP);
		break;
	default:
		break;
	}

	data->stream.ops->free(&data->stream);
	if (!data->stream.runtime->dma_buffer_p)
		FUNC1(data->stream.runtime->buffer);
	FUNC1(data->stream.runtime);
	FUNC1(data);
	return 0;
}