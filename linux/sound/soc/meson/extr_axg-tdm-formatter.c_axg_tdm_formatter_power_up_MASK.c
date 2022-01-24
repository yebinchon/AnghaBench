#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int dummy; } ;
struct axg_tdm_stream {TYPE_1__* iface; } ;
struct axg_tdm_formatter {int /*<<< orphan*/  pclk; struct axg_tdm_stream* stream; int /*<<< orphan*/  lrclk_sel; int /*<<< orphan*/  sclk_sel; TYPE_3__* drv; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {struct axg_tdm_stream* (* get_stream ) (struct snd_soc_dapm_widget*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  lrclk; int /*<<< orphan*/  sclk; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct axg_tdm_formatter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axg_tdm_stream* FUNC5 (struct snd_soc_dapm_widget*) ; 

__attribute__((used)) static int FUNC6(struct axg_tdm_formatter *formatter,
				      struct snd_soc_dapm_widget *w)
{
	struct axg_tdm_stream *ts = formatter->drv->ops->get_stream(w);
	int ret;

	/*
	 * If we don't get a stream at this stage, it would mean that the
	 * widget is powering up but is not attached to any backend DAI.
	 * It should not happen, ever !
	 */
	if (FUNC0(!ts))
		return -ENODEV;

	/* Clock our device */
	ret = FUNC3(formatter->pclk);
	if (ret)
		return ret;

	/* Reparent the bit clock to the TDM interface */
	ret = FUNC4(formatter->sclk_sel, ts->iface->sclk);
	if (ret)
		goto disable_pclk;

	/* Reparent the sample clock to the TDM interface */
	ret = FUNC4(formatter->lrclk_sel, ts->iface->lrclk);
	if (ret)
		goto disable_pclk;

	formatter->stream = ts;
	ret = FUNC1(formatter);
	if (ret)
		goto disable_pclk;

	return 0;

disable_pclk:
	FUNC2(formatter->pclk);
	return ret;
}