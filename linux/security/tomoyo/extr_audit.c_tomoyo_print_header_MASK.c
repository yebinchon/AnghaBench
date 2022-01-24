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
typedef  int umode_t ;
typedef  size_t u8 ;
struct tomoyo_time {int year; int month; int day; int hour; int min; int sec; } ;
struct tomoyo_request_info {int profile; size_t mode; int /*<<< orphan*/  granted; struct tomoyo_obj_info* obj; } ;
struct tomoyo_obj_info {int validate_done; struct tomoyo_mini_stat* stat; int /*<<< orphan*/ * stat_valid; } ;
struct tomoyo_mini_stat {unsigned int dev; int mode; unsigned int rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; scalar_t__ ino; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int S_IALLUGO ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 size_t TOMOYO_MAX_PATH_STAT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (char*,int const,char*,...) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct tomoyo_time*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct tomoyo_obj_info*) ; 
 char** tomoyo_mode ; 
 int FUNC22 () ; 
 int FUNC23 () ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC25(struct tomoyo_request_info *r)
{
	struct tomoyo_time stamp;
	const pid_t gpid = FUNC18(current);
	struct tomoyo_obj_info *obj = r->obj;
	static const int tomoyo_buffer_len = 4096;
	char *buffer = FUNC15(tomoyo_buffer_len, GFP_NOFS);
	int pos;
	u8 i;

	if (!buffer)
		return NULL;

	FUNC19(FUNC16(), &stamp);

	pos = FUNC17(buffer, tomoyo_buffer_len - 1,
		       "#%04u/%02u/%02u %02u:%02u:%02u# profile=%u mode=%s granted=%s (global-pid=%u) task={ pid=%u ppid=%u uid=%u gid=%u euid=%u egid=%u suid=%u sgid=%u fsuid=%u fsgid=%u }",
		       stamp.year, stamp.month, stamp.day, stamp.hour,
		       stamp.min, stamp.sec, r->profile, tomoyo_mode[r->mode],
		       FUNC24(r->granted), gpid, FUNC22(),
		       FUNC23(),
		       FUNC13(&init_user_ns, FUNC11()),
		       FUNC12(&init_user_ns, FUNC8()),
		       FUNC13(&init_user_ns, FUNC5()),
		       FUNC12(&init_user_ns, FUNC4()),
		       FUNC13(&init_user_ns, FUNC10()),
		       FUNC12(&init_user_ns, FUNC9()),
		       FUNC13(&init_user_ns, FUNC7()),
		       FUNC12(&init_user_ns, FUNC6()));
	if (!obj)
		goto no_obj_info;
	if (!obj->validate_done) {
		FUNC21(obj);
		obj->validate_done = true;
	}
	for (i = 0; i < TOMOYO_MAX_PATH_STAT; i++) {
		struct tomoyo_mini_stat *stat;
		unsigned int dev;
		umode_t mode;

		if (!obj->stat_valid[i])
			continue;
		stat = &obj->stat[i];
		dev = stat->dev;
		mode = stat->mode;
		if (i & 1) {
			pos += FUNC17(buffer + pos,
					tomoyo_buffer_len - 1 - pos,
					" path%u.parent={ uid=%u gid=%u ino=%lu perm=0%o }",
					(i >> 1) + 1,
					FUNC13(&init_user_ns, stat->uid),
					FUNC12(&init_user_ns, stat->gid),
					(unsigned long)stat->ino,
					stat->mode & S_IALLUGO);
			continue;
		}
		pos += FUNC17(buffer + pos, tomoyo_buffer_len - 1 - pos,
				" path%u={ uid=%u gid=%u ino=%lu major=%u minor=%u perm=0%o type=%s",
				(i >> 1) + 1,
				FUNC13(&init_user_ns, stat->uid),
				FUNC12(&init_user_ns, stat->gid),
				(unsigned long)stat->ino,
				FUNC0(dev), FUNC1(dev),
				mode & S_IALLUGO, FUNC20(mode));
		if (FUNC3(mode) || FUNC2(mode)) {
			dev = stat->rdev;
			pos += FUNC17(buffer + pos,
					tomoyo_buffer_len - 1 - pos,
					" dev_major=%u dev_minor=%u",
					FUNC0(dev), FUNC1(dev));
		}
		pos += FUNC17(buffer + pos, tomoyo_buffer_len - 1 - pos,
				" }");
	}
no_obj_info:
	if (pos < tomoyo_buffer_len - 1)
		return buffer;
	FUNC14(buffer);
	return NULL;
}