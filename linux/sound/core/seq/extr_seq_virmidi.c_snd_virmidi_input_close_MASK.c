#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_virmidi_dev {int /*<<< orphan*/  filelist_sem; int /*<<< orphan*/  filelist_lock; } ;
struct snd_virmidi {int /*<<< orphan*/  parser; int /*<<< orphan*/  list; } ;
struct snd_rawmidi_substream {TYPE_2__* runtime; TYPE_1__* rmidi; } ;
struct TYPE_4__ {struct snd_virmidi* private_data; } ;
struct TYPE_3__ {struct snd_virmidi_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_virmidi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_rawmidi_substream *substream)
{
	struct snd_virmidi_dev *rdev = substream->rmidi->private_data;
	struct snd_virmidi *vmidi = substream->runtime->private_data;

	FUNC0(&rdev->filelist_sem);
	FUNC5(&rdev->filelist_lock);
	FUNC2(&vmidi->list);
	FUNC6(&rdev->filelist_lock);
	FUNC4(&rdev->filelist_sem);
	FUNC3(vmidi->parser);
	substream->runtime->private_data = NULL;
	FUNC1(vmidi);
	return 0;
}