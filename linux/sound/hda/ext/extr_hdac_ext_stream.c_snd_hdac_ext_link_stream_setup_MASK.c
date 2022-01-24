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
struct hdac_stream {unsigned int stream_tag; } ;
struct hdac_ext_stream {scalar_t__ pplc_addr; struct hdac_stream hstream; } ;

/* Variables and functions */
 unsigned int AZX_PPLCCTL_STRM_MASK ; 
 unsigned int AZX_PPLCCTL_STRM_SHIFT ; 
 scalar_t__ AZX_REG_PPLCCTL ; 
 scalar_t__ AZX_REG_PPLCFMT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_ext_stream*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

int FUNC4(struct hdac_ext_stream *stream, int fmt)
{
	struct hdac_stream *hstream = &stream->hstream;
	unsigned int val;

	/* make sure the run bit is zero for SD */
	FUNC1(stream);
	/* program the stream_tag */
	val = FUNC0(stream->pplc_addr + AZX_REG_PPLCCTL);
	val = (val & ~AZX_PPLCCTL_STRM_MASK) |
		(hstream->stream_tag << AZX_PPLCCTL_STRM_SHIFT);
	FUNC2(val, stream->pplc_addr + AZX_REG_PPLCCTL);

	/* program the stream format */
	FUNC3(fmt, stream->pplc_addr + AZX_REG_PPLCFMT);

	return 0;
}