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
struct q6asm {int /*<<< orphan*/  adev; int /*<<< orphan*/  slock; struct audio_client** session; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct audio_client {int session; int perf_mode; int stream_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  refcount; int /*<<< orphan*/  adev; int /*<<< orphan*/  io_mode; void* priv; struct q6asm* q6asm; struct device* dev; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  q6asm_cb ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_SYNC_IO_MODE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct audio_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct q6asm* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct audio_client* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct audio_client* FUNC7 (struct q6asm*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

struct audio_client *FUNC11(struct device *dev, q6asm_cb cb,
					      void *priv, int stream_id,
					      int perf_mode)
{
	struct q6asm *a = FUNC2(dev->parent);
	struct audio_client *ac;
	unsigned long flags;

	ac = FUNC7(a, stream_id + 1);
	if (ac) {
		FUNC1(dev, "Audio Client already active\n");
		return ac;
	}

	ac = FUNC5(sizeof(*ac), GFP_KERNEL);
	if (!ac)
		return FUNC0(-ENOMEM);

	FUNC9(&a->slock, flags);
	a->session[stream_id + 1] = ac;
	FUNC10(&a->slock, flags);
	ac->session = stream_id + 1;
	ac->cb = cb;
	ac->dev = dev;
	ac->q6asm = a;
	ac->priv = priv;
	ac->io_mode = ASM_SYNC_IO_MODE;
	ac->perf_mode = perf_mode;
	/* DSP expects stream id from 1 */
	ac->stream_id = 1;
	ac->adev = a->adev;
	FUNC4(&ac->refcount);

	FUNC3(&ac->cmd_wait);
	FUNC6(&ac->cmd_lock);
	FUNC8(&ac->lock);

	return ac;
}