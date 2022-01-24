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
struct ubifs_ino_node {int /*<<< orphan*/  padding2; int /*<<< orphan*/  padding1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct ubifs_ino_node *ino)
{
	FUNC0(ino->padding1, 0, 4);
	FUNC0(ino->padding2, 0, 26);
}