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
struct snd_info_entry {int* name; struct loopback* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct loopback {int /*<<< orphan*/  cable_lock; } ;

/* Variables and functions */
 int MAX_PCM_SUBSTREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,struct loopback*,int,int) ; 
 int FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(struct snd_info_entry *entry,
			     struct snd_info_buffer *buffer)
{
	struct loopback *loopback = entry->private_data;
	int sub, num;

	FUNC0(&loopback->cable_lock);
	num = entry->name[FUNC3(entry->name)-1];
	num = num == '0' ? 0 : 1;
	for (sub = 0; sub < MAX_PCM_SUBSTREAMS; sub++)
		FUNC2(buffer, loopback, sub, num);
	FUNC1(&loopback->cable_lock);
}