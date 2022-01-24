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
struct snd_pcm {int /*<<< orphan*/  card; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_PCM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_PCM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 unsigned int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct snd_pcm* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ snd_major ; 

__attribute__((used)) static bool FUNC6(struct file *file)
{
	struct inode *inode = FUNC1(file);
	struct snd_pcm *pcm;
	unsigned int minor;

	if (!FUNC0(inode->i_mode) || FUNC2(inode) != snd_major)
		return false;
	minor = FUNC3(inode);
	pcm = FUNC5(minor, SNDRV_DEVICE_TYPE_PCM_PLAYBACK);
	if (!pcm)
		pcm = FUNC5(minor, SNDRV_DEVICE_TYPE_PCM_CAPTURE);
	if (!pcm)
		return false;
	FUNC4(pcm->card);
	return true;
}