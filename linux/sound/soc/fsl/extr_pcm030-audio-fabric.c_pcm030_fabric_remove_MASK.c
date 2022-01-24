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
struct platform_device {int dummy; } ;
struct pcm030_audio_data {int /*<<< orphan*/  codec_device; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcm030_audio_data* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	struct pcm030_audio_data *pdata = FUNC1(op);
	int ret;

	ret = FUNC2(pdata->card);
	FUNC0(pdata->codec_device);

	return ret;
}