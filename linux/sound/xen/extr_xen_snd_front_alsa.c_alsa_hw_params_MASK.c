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
struct xen_snd_front_pcm_stream_info {int /*<<< orphan*/  index; int /*<<< orphan*/  shbuf; int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; struct xen_snd_front_info* front_info; } ;
struct xen_snd_front_info {TYPE_1__* xb_dev; } ;
struct xen_front_pgdir_shbuf_cfg {int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; int /*<<< orphan*/ * pgdir; TYPE_1__* xb_dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef  int /*<<< orphan*/  buf_cfg ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xen_front_pgdir_shbuf_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct xen_snd_front_pcm_stream_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_snd_front_pcm_stream_info*) ; 
 struct xen_snd_front_pcm_stream_info* FUNC5 (struct snd_pcm_substream*) ; 
 int FUNC6 (struct xen_front_pgdir_shbuf_cfg*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			  struct snd_pcm_hw_params *params)
{
	struct xen_snd_front_pcm_stream_info *stream = FUNC5(substream);
	struct xen_snd_front_info *front_info = stream->front_info;
	struct xen_front_pgdir_shbuf_cfg buf_cfg;
	int ret;

	/*
	 * This callback may be called multiple times,
	 * so free the previously allocated shared buffer if any.
	 */
	FUNC4(stream);
	ret = FUNC3(stream, FUNC2(params));
	if (ret < 0)
		goto fail;

	FUNC1(&buf_cfg, 0, sizeof(buf_cfg));
	buf_cfg.xb_dev = front_info->xb_dev;
	buf_cfg.pgdir = &stream->shbuf;
	buf_cfg.num_pages = stream->num_pages;
	buf_cfg.pages = stream->pages;

	ret = FUNC6(&buf_cfg);
	if (ret < 0)
		goto fail;

	ret = FUNC7(&stream->shbuf);
	if (ret < 0)
		goto fail;

	return 0;

fail:
	FUNC4(stream);
	FUNC0(&front_info->xb_dev->dev,
		"Failed to allocate buffers for stream with index %d\n",
		stream->index);
	return ret;
}