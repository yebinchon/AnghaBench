#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lx_stream {unsigned int is_capture; int /*<<< orphan*/  status; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LX_STREAM_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lx6464es*,int /*<<< orphan*/ ,unsigned int const) ; 

__attribute__((used)) static void FUNC3(struct lx6464es *chip, struct lx_stream *lx_stream)
{
	const unsigned int is_capture = lx_stream->is_capture;
	int err;

	FUNC0(chip->card->dev, "stopping: stopping stream\n");
	err = FUNC2(chip, 0, is_capture);
	if (err < 0)
		FUNC1(chip->card->dev, "couldn't stop stream\n");
	else
		lx_stream->status = LX_STREAM_STATUS_FREE;

}