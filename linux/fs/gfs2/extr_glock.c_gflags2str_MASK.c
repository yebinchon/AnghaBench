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
struct gfs2_glock {unsigned long gl_flags; scalar_t__ gl_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_BLOCKING ; 
 int /*<<< orphan*/  GLF_DEMOTE ; 
 int /*<<< orphan*/  GLF_DEMOTE_IN_PROGRESS ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  GLF_FROZEN ; 
 int /*<<< orphan*/  GLF_INITIAL ; 
 int /*<<< orphan*/  GLF_INVALIDATE_IN_PROGRESS ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int /*<<< orphan*/  GLF_LOCK ; 
 int /*<<< orphan*/  GLF_LRU ; 
 int /*<<< orphan*/  GLF_PENDING_DEMOTE ; 
 int /*<<< orphan*/  GLF_QUEUED ; 
 int /*<<< orphan*/  GLF_REPLY_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long const*) ; 

__attribute__((used)) static const char *FUNC1(char *buf, const struct gfs2_glock *gl)
{
	const unsigned long *gflags = &gl->gl_flags;
	char *p = buf;

	if (FUNC0(GLF_LOCK, gflags))
		*p++ = 'l';
	if (FUNC0(GLF_DEMOTE, gflags))
		*p++ = 'D';
	if (FUNC0(GLF_PENDING_DEMOTE, gflags))
		*p++ = 'd';
	if (FUNC0(GLF_DEMOTE_IN_PROGRESS, gflags))
		*p++ = 'p';
	if (FUNC0(GLF_DIRTY, gflags))
		*p++ = 'y';
	if (FUNC0(GLF_LFLUSH, gflags))
		*p++ = 'f';
	if (FUNC0(GLF_INVALIDATE_IN_PROGRESS, gflags))
		*p++ = 'i';
	if (FUNC0(GLF_REPLY_PENDING, gflags))
		*p++ = 'r';
	if (FUNC0(GLF_INITIAL, gflags))
		*p++ = 'I';
	if (FUNC0(GLF_FROZEN, gflags))
		*p++ = 'F';
	if (FUNC0(GLF_QUEUED, gflags))
		*p++ = 'q';
	if (FUNC0(GLF_LRU, gflags))
		*p++ = 'L';
	if (gl->gl_object)
		*p++ = 'o';
	if (FUNC0(GLF_BLOCKING, gflags))
		*p++ = 'b';
	*p = 0;
	return buf;
}