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
struct urb {int /*<<< orphan*/  status; struct snd_urb_ctx* context; } ;
struct snd_usb_endpoint {int /*<<< orphan*/  active_mask; TYPE_1__* data_subs; TYPE_2__* chip; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  ready_playback_urbs; int /*<<< orphan*/  pipe; } ;
struct snd_urb_ctx {int /*<<< orphan*/  index; int /*<<< orphan*/  ready_list; struct snd_usb_endpoint* ep; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  shutdown; } ;
struct TYPE_3__ {struct snd_pcm_substream* pcm_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EP_FLAG_RUNNING ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_endpoint*,struct snd_urb_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_endpoint*,struct snd_urb_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_endpoint*,struct snd_urb_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_usb_endpoint*,struct snd_urb_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC9 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct urb *urb)
{
	struct snd_urb_ctx *ctx = urb->context;
	struct snd_usb_endpoint *ep = ctx->ep;
	struct snd_pcm_substream *substream;
	unsigned long flags;
	int err;

	if (FUNC13(urb->status == -ENOENT ||		/* unlinked */
		     urb->status == -ENODEV ||		/* device removed */
		     urb->status == -ECONNRESET ||	/* unlinked */
		     urb->status == -ESHUTDOWN))	/* device disabled */
		goto exit_clear;
	/* device disconnected */
	if (FUNC13(FUNC0(&ep->chip->shutdown)))
		goto exit_clear;

	if (FUNC13(!FUNC12(EP_FLAG_RUNNING, &ep->flags)))
		goto exit_clear;

	if (FUNC15(ep->pipe)) {
		FUNC7(ep, ctx);
		/* can be stopped during retire callback */
		if (FUNC13(!FUNC12(EP_FLAG_RUNNING, &ep->flags)))
			goto exit_clear;

		if (FUNC9(ep)) {
			FUNC10(&ep->lock, flags);
			FUNC2(&ctx->ready_list, &ep->ready_playback_urbs);
			FUNC11(&ep->lock, flags);
			FUNC5(ep);

			goto exit_clear;
		}

		FUNC4(ep, ctx);
	} else {
		FUNC6(ep, ctx);
		/* can be stopped during retire callback */
		if (FUNC13(!FUNC12(EP_FLAG_RUNNING, &ep->flags)))
			goto exit_clear;

		FUNC3(ep, ctx);
	}

	err = FUNC16(urb, GFP_ATOMIC);
	if (err == 0)
		return;

	FUNC14(ep->chip, "cannot submit urb (err = %d)\n", err);
	if (ep->data_subs && ep->data_subs->pcm_substream) {
		substream = ep->data_subs->pcm_substream;
		FUNC8(substream);
	}

exit_clear:
	FUNC1(ctx->index, &ep->active_mask);
}