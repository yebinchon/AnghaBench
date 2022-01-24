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
struct treepath {int dummy; } ;
struct item_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct treepath const*) ; 
 int /*<<< orphan*/  FUNC1 (struct treepath const*) ; 
 struct item_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct item_head *FUNC3(const struct treepath *path)
{
	return FUNC2(FUNC1(path), FUNC0(path));
}