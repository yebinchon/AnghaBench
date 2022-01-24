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
struct io_submit_state {int fd; int used_refs; struct file* file; int /*<<< orphan*/  ios_left; int /*<<< orphan*/  has_refs; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (int) ; 
 struct file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct io_submit_state*) ; 

__attribute__((used)) static struct file *FUNC3(struct io_submit_state *state, int fd)
{
	if (!state)
		return FUNC0(fd);

	if (state->file) {
		if (state->fd == fd) {
			state->used_refs++;
			state->ios_left--;
			return state->file;
		}
		FUNC2(state);
	}
	state->file = FUNC1(fd, state->ios_left);
	if (!state->file)
		return NULL;

	state->fd = fd;
	state->has_refs = state->ios_left;
	state->used_refs = 1;
	state->ios_left--;
	return state->file;
}