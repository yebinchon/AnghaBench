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
struct thread {int dummy; } ;
struct comm {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct comm const*) ; 
 struct comm* FUNC1 (struct thread const*) ; 

__attribute__((used)) static const char *FUNC2(const struct thread *thread)
{
	const struct comm *comm = FUNC1(thread);

	if (!comm)
		return NULL;

	return FUNC0(comm);
}