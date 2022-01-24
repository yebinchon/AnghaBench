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
struct swevent_htable {int /*<<< orphan*/  recursion; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swevent_htable ; 
 struct swevent_htable* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	struct swevent_htable *swhash = FUNC1(&swevent_htable);

	return FUNC0(swhash->recursion);
}