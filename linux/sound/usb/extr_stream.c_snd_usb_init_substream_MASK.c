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
struct snd_usb_substream {int direction; scalar_t__ channels_max; struct snd_usb_stream* stream; struct snd_usb_power_domain* str_pd; int /*<<< orphan*/  ep_num; int /*<<< orphan*/  fmt_type; int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; int /*<<< orphan*/  fmt_list; scalar_t__ pkt_offset_adj; int /*<<< orphan*/  dev; int /*<<< orphan*/  speed; int /*<<< orphan*/  tx_length_quirk; int /*<<< orphan*/  txfr_quirk; int /*<<< orphan*/  lock; } ;
struct snd_usb_stream {TYPE_1__* chip; int /*<<< orphan*/  pcm; struct snd_usb_substream* substream; } ;
struct snd_usb_power_domain {int dummy; } ;
struct audioformat {scalar_t__ channels; int /*<<< orphan*/  endpoint; int /*<<< orphan*/  fmt_type; int /*<<< orphan*/  formats; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_length_quirk; int /*<<< orphan*/  txfr_quirk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UAC3_PD_STATE_D1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct snd_usb_power_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_usb_stream *as,
				   int stream,
				   struct audioformat *fp,
				   struct snd_usb_power_domain *pd)
{
	struct snd_usb_substream *subs = &as->substream[stream];

	FUNC0(&subs->fmt_list);
	FUNC6(&subs->lock);

	subs->stream = as;
	subs->direction = stream;
	subs->dev = as->chip->dev;
	subs->txfr_quirk = as->chip->txfr_quirk;
	subs->tx_length_quirk = as->chip->tx_length_quirk;
	subs->speed = FUNC2(subs->dev);
	subs->pkt_offset_adj = 0;

	FUNC5(as->pcm, stream);

	FUNC1(&fp->list, &subs->fmt_list);
	subs->formats |= fp->formats;
	subs->num_formats++;
	subs->fmt_type = fp->fmt_type;
	subs->ep_num = fp->endpoint;
	if (fp->channels > subs->channels_max)
		subs->channels_max = fp->channels;

	if (pd) {
		subs->str_pd = pd;
		/* Initialize Power Domain to idle status D1 */
		FUNC3(subs->stream->chip, pd,
					 UAC3_PD_STATE_D1);
	}

	FUNC4(subs);
}