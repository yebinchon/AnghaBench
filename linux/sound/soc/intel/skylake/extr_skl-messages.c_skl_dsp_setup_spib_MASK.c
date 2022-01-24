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
struct hdac_stream {int /*<<< orphan*/  index; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 struct hdac_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*,struct hdac_ext_stream*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int,int /*<<< orphan*/ ) ; 
 struct hdac_stream* FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 struct hdac_ext_stream* FUNC4 (struct hdac_stream*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int size,
				int stream_tag, int enable)
{
	struct hdac_bus *bus = FUNC0(dev);
	struct hdac_stream *stream = FUNC3(bus,
			SNDRV_PCM_STREAM_PLAYBACK, stream_tag);
	struct hdac_ext_stream *estream;

	if (!stream)
		return -EINVAL;

	estream = FUNC4(stream);
	/* enable/disable SPIB for this hdac stream */
	FUNC2(bus, enable, stream->index);

	/* set the spib value */
	FUNC1(bus, estream, size);

	return 0;
}