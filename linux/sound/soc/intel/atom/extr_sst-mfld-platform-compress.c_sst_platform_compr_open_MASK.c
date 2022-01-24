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
struct sst_runtime_stream {scalar_t__ id; TYPE_2__* compr_ops; int /*<<< orphan*/  status_lock; } ;
struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sst_runtime_stream* private_data; } ;
struct TYPE_8__ {TYPE_3__* dev; TYPE_2__* compr_ops; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* power ) (TYPE_3__*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SST_PLATFORM_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct sst_runtime_stream*) ; 
 struct sst_runtime_stream* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* sst ; 
 int /*<<< orphan*/  FUNC4 (struct sst_runtime_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_compr_stream *cstream)
{

	int ret_val = 0;
	struct snd_compr_runtime *runtime = cstream->runtime;
	struct sst_runtime_stream *stream;

	stream = FUNC1(sizeof(*stream), GFP_KERNEL);
	if (!stream)
		return -ENOMEM;

	FUNC3(&stream->status_lock);

	/* get the sst ops */
	if (!sst || !FUNC6(sst->dev->driver->owner)) {
		FUNC2("no device available to run\n");
		ret_val = -ENODEV;
		goto out_ops;
	}
	stream->compr_ops = sst->compr_ops;
	stream->id = 0;

	/* Turn on LPE */
	sst->compr_ops->power(sst->dev, true);

	FUNC4(stream, SST_PLATFORM_INIT);
	runtime->private_data = stream;
	return 0;
out_ops:
	FUNC0(stream);
	return ret_val;
}