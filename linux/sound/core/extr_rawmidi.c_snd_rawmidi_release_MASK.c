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
struct snd_rawmidi_file {struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {TYPE_1__* card; } ;
struct module {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct snd_rawmidi_file* private_data; } ;
struct TYPE_2__ {struct module* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct snd_rawmidi_file *rfile;
	struct snd_rawmidi *rmidi;
	struct module *module;

	rfile = file->private_data;
	rmidi = rfile->rmidi;
	FUNC2(rfile);
	FUNC0(rfile);
	module = rmidi->card->module;
	FUNC3(rmidi->card, file);
	FUNC1(module);
	return 0;
}