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
struct ext4_sb_info {int /*<<< orphan*/  s_sb; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 

__attribute__((used)) static ssize_t FUNC2(struct ext4_sb_info *sbi,
				  const char *buf, size_t count)
{
	int len = count;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (len && buf[len-1] == '\n')
		len--;

	if (len)
		FUNC1(sbi->s_sb, "%.*s", len, buf);
	return count;
}