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
struct sysv_sb_info {scalar_t__ s_bytesex; } ;
typedef  int /*<<< orphan*/  __le16 ;
typedef  int /*<<< orphan*/  __fs16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ BYTESEX_BE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline __fs16 FUNC2(struct sysv_sb_info *sbi, __fs16 *n, int d)
{
	if (sbi->s_bytesex != BYTESEX_BE)
		FUNC1((__le16 *)n, d);
	else
		FUNC0((__be16 *)n, d);
	return *n;
}