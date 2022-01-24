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
struct axg_tdm_stream {TYPE_1__* iface; } ;
struct axg_tdm_formatter {int enabled; int /*<<< orphan*/  map; TYPE_3__* drv; int /*<<< orphan*/  sclk; int /*<<< orphan*/  lrclk; struct axg_tdm_stream* stream; int /*<<< orphan*/  reset; } ;
struct TYPE_8__ {int invert_sclk; } ;
struct TYPE_7__ {TYPE_2__* ops; TYPE_4__* quirks; } ;
struct TYPE_6__ {int (* prepare ) (int /*<<< orphan*/ ,TYPE_4__*,struct axg_tdm_stream*) ;int /*<<< orphan*/  (* enable ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,struct axg_tdm_stream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct axg_tdm_formatter *formatter)
{
	struct axg_tdm_stream *ts = formatter->stream;
	bool invert = formatter->drv->quirks->invert_sclk;
	int ret;

	/* Do nothing if the formatter is already enabled */
	if (formatter->enabled)
		return 0;

	/*
	 * On the g12a (and possibly other SoCs), when a stream using
	 * multiple lanes is restarted, it will sometimes not start
	 * from the first lane, but randomly from another used one.
	 * The result is an unexpected and random channel shift.
	 *
	 * The hypothesis is that an HW counter is not properly reset
	 * and the formatter simply starts on the lane it stopped
	 * before. Unfortunately, there does not seems to be a way to
	 * reset this through the registers of the block.
	 *
	 * However, the g12a has indenpendent reset lines for each audio
	 * devices. Using this reset before each start solves the issue.
	 */
	ret = FUNC4(formatter->reset);
	if (ret)
		return ret;

	/*
	 * If sclk is inverted, invert it back and provide the inversion
	 * required by the formatter
	 */
	invert ^= FUNC0(ts->iface->fmt);
	ret = FUNC3(formatter->sclk, invert ? 180 : 0);
	if (ret)
		return ret;

	/* Setup the stream parameter in the formatter */
	ret = formatter->drv->ops->prepare(formatter->map,
					   formatter->drv->quirks,
					   formatter->stream);
	if (ret)
		return ret;

	/* Enable the signal clocks feeding the formatter */
	ret = FUNC2(formatter->sclk);
	if (ret)
		return ret;

	ret = FUNC2(formatter->lrclk);
	if (ret) {
		FUNC1(formatter->sclk);
		return ret;
	}

	/* Finally, actually enable the formatter */
	formatter->drv->ops->enable(formatter->map);
	formatter->enabled = true;

	return 0;
}