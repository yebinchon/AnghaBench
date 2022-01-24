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
struct hdsp {int /*<<< orphan*/  playback_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSP_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hdsp *hdsp)
{
	FUNC0(hdsp->playback_buffer, 0, HDSP_DMA_AREA_BYTES);
}