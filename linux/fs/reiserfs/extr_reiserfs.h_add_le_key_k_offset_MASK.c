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
struct reiserfs_key {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct reiserfs_key*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(int version, struct reiserfs_key *key,
				       loff_t offset)
{
	FUNC1(version, key,
			    FUNC0(version, key) + offset);
}