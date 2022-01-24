#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct skl_pipe_params {int /*<<< orphan*/  format; int /*<<< orphan*/  ch; int /*<<< orphan*/  s_freq; int /*<<< orphan*/  host_bps; scalar_t__ host_dma_id; int /*<<< orphan*/  stream; } ;
struct skl_dev {int /*<<< orphan*/  pci; } ;
struct hdac_stream {int dummy; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int prepared; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct skl_dev* FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC3 (struct device*) ; 
 TYPE_1__* FUNC4 (struct hdac_ext_stream*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_bus*,struct hdac_ext_stream*,int) ; 
 struct hdac_stream* FUNC7 (struct hdac_bus*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,unsigned int) ; 
 int FUNC10 (TYPE_1__*) ; 
 struct hdac_ext_stream* FUNC11 (struct hdac_stream*) ; 

int FUNC12(struct device *dev, struct skl_pipe_params *params)
{
	struct hdac_bus *bus = FUNC3(dev);
	struct skl_dev *skl = FUNC1(bus);
	unsigned int format_val;
	struct hdac_stream *hstream;
	struct hdac_ext_stream *stream;
	int err;

	hstream = FUNC7(bus, params->stream,
					params->host_dma_id + 1);
	if (!hstream)
		return -EINVAL;

	stream = FUNC11(hstream);
	FUNC6(bus, stream, true);

	format_val = FUNC5(params->s_freq,
			params->ch, params->format, params->host_bps, 0);

	FUNC2(dev, "format_val=%d, rate=%d, ch=%d, format=%d\n",
		format_val, params->s_freq, params->ch, params->format);

	FUNC8(FUNC4(stream));
	err = FUNC9(FUNC4(stream), format_val);
	if (err < 0)
		return err;

	/*
	 * The recommended SDxFMT programming sequence for BXT
	 * platforms is to couple the stream before writing the format
	 */
	if (FUNC0(skl->pci)) {
		FUNC6(bus, stream, false);
		err = FUNC10(FUNC4(stream));
		FUNC6(bus, stream, true);
	} else {
		err = FUNC10(FUNC4(stream));
	}

	if (err < 0)
		return err;

	FUNC4(stream)->prepared = 1;

	return 0;
}