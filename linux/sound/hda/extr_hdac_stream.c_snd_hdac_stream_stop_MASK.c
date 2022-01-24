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
struct hdac_stream {int index; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hdac_stream*) ; 

void FUNC3(struct hdac_stream *azx_dev)
{
	FUNC2(azx_dev->bus, azx_dev);

	FUNC1(azx_dev);
	/* disable SIE */
	FUNC0(azx_dev->bus, INTCTL, 1 << azx_dev->index, 0);
}