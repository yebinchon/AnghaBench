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
struct hdac_stream {scalar_t__* posbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CTL ; 
 unsigned char SD_CTL_STREAM_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hdac_stream*) ; 
 unsigned char FUNC1 (struct hdac_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_stream*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct hdac_stream *azx_dev)
{
	unsigned char val;
	int timeout;

	FUNC0(azx_dev);

	FUNC2(azx_dev, SD_CTL, 0, SD_CTL_STREAM_RESET);
	FUNC4(3);
	timeout = 300;
	do {
		val = FUNC1(azx_dev, SD_CTL) &
			SD_CTL_STREAM_RESET;
		if (val)
			break;
	} while (--timeout);
	val &= ~SD_CTL_STREAM_RESET;
	FUNC3(azx_dev, SD_CTL, val);
	FUNC4(3);

	timeout = 300;
	/* waiting for hardware to report that the stream is out of reset */
	do {
		val = FUNC1(azx_dev, SD_CTL) &
			SD_CTL_STREAM_RESET;
		if (!val)
			break;
	} while (--timeout);

	/* reset first position - may not be synced with hw at this time */
	if (azx_dev->posbuf)
		*azx_dev->posbuf = 0;
}