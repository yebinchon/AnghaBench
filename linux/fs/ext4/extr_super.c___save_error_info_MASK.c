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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct ext4_super_block {int /*<<< orphan*/  s_error_count; int /*<<< orphan*/  s_last_error_block; int /*<<< orphan*/  s_first_error_block; int /*<<< orphan*/  s_last_error_ino; int /*<<< orphan*/  s_first_error_ino; void* s_first_error_line; int /*<<< orphan*/  s_first_error_func; int /*<<< orphan*/  s_last_error_time_hi; int /*<<< orphan*/  s_first_error_time_hi; scalar_t__ s_last_error_time; scalar_t__ s_first_error_time; void* s_last_error_line; int /*<<< orphan*/  s_last_error_func; int /*<<< orphan*/  s_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_err_report; int /*<<< orphan*/  s_mount_state; struct ext4_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_ERROR_FS ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int HZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  s_last_error_time ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC8(struct super_block *sb, const char *func,
			    unsigned int line)
{
	struct ext4_super_block *es = FUNC0(sb)->s_es;

	FUNC0(sb)->s_mount_state |= EXT4_ERROR_FS;
	if (FUNC1(sb->s_bdev))
		return;
	es->s_state |= FUNC2(EXT4_ERROR_FS);
	FUNC4(es, s_last_error_time);
	FUNC7(es->s_last_error_func, func, sizeof(es->s_last_error_func));
	es->s_last_error_line = FUNC3(line);
	if (!es->s_first_error_time) {
		es->s_first_error_time = es->s_last_error_time;
		es->s_first_error_time_hi = es->s_last_error_time_hi;
		FUNC7(es->s_first_error_func, func,
			sizeof(es->s_first_error_func));
		es->s_first_error_line = FUNC3(line);
		es->s_first_error_ino = es->s_last_error_ino;
		es->s_first_error_block = es->s_last_error_block;
	}
	/*
	 * Start the daily error reporting function if it hasn't been
	 * started already
	 */
	if (!es->s_error_count)
		FUNC6(&FUNC0(sb)->s_err_report, jiffies + 24*60*60*HZ);
	FUNC5(&es->s_error_count, 1);
}