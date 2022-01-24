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
struct hda_codec {int jackpoll_interval; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	/* In order not to create "Phantom Jack" controls,
	   temporary enable jackpoll */
	int err;
	int old_interval = codec->jackpoll_interval;
	codec->jackpoll_interval = FUNC0(100);
	err = FUNC1(codec);
	codec->jackpoll_interval = old_interval;
	return err;
}