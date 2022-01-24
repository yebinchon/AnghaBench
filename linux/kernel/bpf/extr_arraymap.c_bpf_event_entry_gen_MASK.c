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
struct file {int /*<<< orphan*/  private_data; } ;
struct bpf_event_entry {struct file* map_file; struct file* perf_file; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct bpf_event_entry* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bpf_event_entry *FUNC1(struct file *perf_file,
						   struct file *map_file)
{
	struct bpf_event_entry *ee;

	ee = FUNC0(sizeof(*ee), GFP_ATOMIC);
	if (ee) {
		ee->event = perf_file->private_data;
		ee->perf_file = perf_file;
		ee->map_file = map_file;
	}

	return ee;
}