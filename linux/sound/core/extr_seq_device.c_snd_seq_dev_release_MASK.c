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
struct snd_seq_device {int /*<<< orphan*/  (* private_free ) (struct snd_seq_device*) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_device*) ; 
 struct snd_seq_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct snd_seq_device *sdev = FUNC2(dev);

	if (sdev->private_free)
		sdev->private_free(sdev);
	FUNC0(sdev);
}