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
struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {int dummy; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  HDAC_EXT_STREAM_TYPE_HOST ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 struct hdac_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_stream*,struct snd_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_ext_stream*,int /*<<< orphan*/ ) ; 
 struct hdac_stream* FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 struct hdac_ext_stream* FUNC5 (struct hdac_stream*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
		struct snd_dma_buffer *dmab, int stream_tag)
{
	struct hdac_bus *bus = FUNC0(dev);
	struct hdac_stream *stream;
	struct hdac_ext_stream *estream;

	if (!bus)
		return -ENODEV;

	stream = FUNC4(bus,
		SNDRV_PCM_STREAM_PLAYBACK, stream_tag);
	if (!stream)
		return -EINVAL;

	estream = FUNC5(stream);
	FUNC1(dev, 0, stream_tag, false);
	FUNC3(estream, HDAC_EXT_STREAM_TYPE_HOST);

	FUNC2(stream, dmab);

	return 0;
}