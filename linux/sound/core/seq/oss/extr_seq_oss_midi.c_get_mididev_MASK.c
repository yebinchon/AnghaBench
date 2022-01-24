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
struct seq_oss_midi {int dummy; } ;
struct seq_oss_devinfo {int max_mididev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 struct seq_oss_midi* FUNC1 (int) ; 

__attribute__((used)) static struct seq_oss_midi *
FUNC2(struct seq_oss_devinfo *dp, int dev)
{
	if (dev < 0 || dev >= dp->max_mididev)
		return NULL;
	dev = FUNC0(dev, dp->max_mididev);
	return FUNC1(dev);
}