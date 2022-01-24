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
struct hdac_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 struct hdac_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_stream*,int) ; 
 struct hdac_stream* FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, bool start, int stream_tag)
{
	struct hdac_bus *bus = FUNC0(dev);
	struct hdac_stream *stream;

	if (!bus)
		return -ENODEV;

	stream = FUNC2(bus,
		SNDRV_PCM_STREAM_PLAYBACK, stream_tag);
	if (!stream)
		return -EINVAL;

	FUNC1(stream, start);

	return 0;
}