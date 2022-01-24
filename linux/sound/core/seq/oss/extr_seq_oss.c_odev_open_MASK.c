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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_MINOR_OSS_MUSIC ; 
 int SNDRV_SEQ_OSS_MODE_MUSIC ; 
 int SNDRV_SEQ_OSS_MODE_SYNTH ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 int FUNC3 (struct file*,int) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *file)
{
	int level, rc;

	if (FUNC0(inode) == SNDRV_MINOR_OSS_MUSIC)
		level = SNDRV_SEQ_OSS_MODE_MUSIC;
	else
		level = SNDRV_SEQ_OSS_MODE_SYNTH;

	FUNC1(&register_mutex);
	rc = FUNC3(file, level);
	FUNC2(&register_mutex);

	return rc;
}