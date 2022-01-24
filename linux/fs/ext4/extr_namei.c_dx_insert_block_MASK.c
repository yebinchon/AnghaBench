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
typedef  int /*<<< orphan*/  u32 ;
struct dx_frame {struct dx_entry* at; struct dx_entry* entries; } ;
struct dx_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dx_entry*) ; 
 int FUNC2 (struct dx_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dx_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dx_entry*,struct dx_entry*,int) ; 

__attribute__((used)) static void FUNC7(struct dx_frame *frame, u32 hash, ext4_lblk_t block)
{
	struct dx_entry *entries = frame->entries;
	struct dx_entry *old = frame->at, *new = old + 1;
	int count = FUNC1(entries);

	FUNC0(count < FUNC2(entries));
	FUNC0(old < entries + count);
	FUNC6(new + 1, new, (char *)(entries + count) - (char *)(new));
	FUNC5(new, hash);
	FUNC3(new, block);
	FUNC4(entries, count + 1);
}