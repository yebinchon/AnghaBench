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
struct mountpoint {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*,struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,struct mountpoint*,struct mount*) ; 

__attribute__((used)) static void FUNC2(struct mount *mnt,
			struct mount *parent,
			struct mountpoint *mp)
{
	FUNC1(parent, mp, mnt);
	FUNC0(mnt, parent);
}