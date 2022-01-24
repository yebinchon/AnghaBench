#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int print_this_domain_only; int eof; int /*<<< orphan*/ * domain; } ;
struct TYPE_4__ {struct tomoyo_domain_info* domain; } ;
struct tomoyo_io_buffer {TYPE_3__ r; int /*<<< orphan*/  read_buf; TYPE_1__ w; } ;
struct tomoyo_domain_info {scalar_t__ is_deleted; int /*<<< orphan*/  list; } ;
struct task_struct {int dummy; } ;
struct TYPE_5__ {struct tomoyo_domain_info* domain_info; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char const*,char*,unsigned int*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 scalar_t__ FUNC7 (char const*) ; 
 struct tomoyo_domain_info* FUNC8 (char const*) ; 
 struct tomoyo_domain_info* FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct tomoyo_io_buffer*,char*,...) ; 
 TYPE_2__* FUNC11 (struct task_struct*) ; 

__attribute__((used)) static bool FUNC12(struct tomoyo_io_buffer *head,
				 const char *data)
{
	unsigned int pid;
	struct tomoyo_domain_info *domain = NULL;
	bool global_pid = false;

	if (FUNC6(data, "select ", 7))
		return false;
	data += 7;
	if (FUNC5(data, "pid=%u", &pid) == 1 ||
	    (global_pid = true, FUNC5(data, "global-pid=%u", &pid) == 1)) {
		struct task_struct *p;

		FUNC3();
		if (global_pid)
			p = FUNC0(pid, &init_pid_ns);
		else
			p = FUNC1(pid);
		if (p)
			domain = FUNC11(p)->domain_info;
		FUNC4();
	} else if (!FUNC6(data, "domain=", 7)) {
		if (FUNC7(data + 7))
			domain = FUNC8(data + 7);
	} else if (FUNC5(data, "Q=%u", &pid) == 1) {
		domain = FUNC9(pid);
	} else
		return false;
	head->w.domain = domain;
	/* Accessing read_buf is safe because head->io_sem is held. */
	if (!head->read_buf)
		return true; /* Do nothing if open(O_WRONLY). */
	FUNC2(&head->r, 0, sizeof(head->r));
	head->r.print_this_domain_only = true;
	if (domain)
		head->r.domain = &domain->list;
	else
		head->r.eof = 1;
	FUNC10(head, "# select %s\n", data);
	if (domain && domain->is_deleted)
		FUNC10(head, "# This is a deleted domain.\n");
	return true;
}