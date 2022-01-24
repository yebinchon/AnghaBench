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
typedef  int /*<<< orphan*/  u64 ;
struct comm {int exec; int /*<<< orphan*/  comm_str; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comm_str_root ; 
 int /*<<< orphan*/  FUNC1 (struct comm*) ; 
 struct comm* FUNC2 (int) ; 

struct comm *FUNC3(const char *str, u64 timestamp, bool exec)
{
	struct comm *comm = FUNC2(sizeof(*comm));

	if (!comm)
		return NULL;

	comm->start = timestamp;
	comm->exec = exec;

	comm->comm_str = FUNC0(str, &comm_str_root);
	if (!comm->comm_str) {
		FUNC1(comm);
		return NULL;
	}

	return comm;
}