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
struct TYPE_4__ {int eof; scalar_t__ w_pos; } ;
struct tomoyo_io_buffer {char* write_buf; TYPE_1__ r; } ;
struct tomoyo_domain_info {TYPE_2__* domainname; int /*<<< orphan*/  profile; } ;
struct task_struct {int dummy; } ;
struct TYPE_6__ {struct tomoyo_domain_info* domain_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 scalar_t__ FUNC2 (char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tomoyo_io_buffer*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tomoyo_io_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char**,char*) ; 
 TYPE_3__* FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct tomoyo_io_buffer *head)
{
	char *buf = head->write_buf;
	bool global_pid = false;
	unsigned int pid;
	struct task_struct *p;
	struct tomoyo_domain_info *domain = NULL;

	/* Accessing write_buf is safe because head->io_sem is held. */
	if (!buf) {
		head->r.eof = true;
		return; /* Do nothing if open(O_RDONLY). */
	}
	if (head->r.w_pos || head->r.eof)
		return;
	head->r.eof = true;
	if (FUNC7(&buf, "global-pid "))
		global_pid = true;
	if (FUNC2(buf, 10, &pid))
		return;
	FUNC3();
	if (global_pid)
		p = FUNC0(pid, &init_pid_ns);
	else
		p = FUNC1(pid);
	if (p)
		domain = FUNC8(p)->domain_info;
	FUNC4();
	if (!domain)
		return;
	FUNC5(head, "%u %u ", pid, domain->profile);
	FUNC6(head, domain->domainname->name);
}