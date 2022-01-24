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
struct nf_log_buf {size_t count; scalar_t__* buf; } ;

/* Variables and functions */
 struct nf_log_buf emergency ; 
 struct nf_log_buf* emergency_ptr ; 
 int /*<<< orphan*/  FUNC0 (struct nf_log_buf*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 

void FUNC4(struct nf_log_buf *m)
{
	m->buf[m->count] = 0;
	FUNC3("%s\n", m->buf);

	if (FUNC1(m != &emergency))
		FUNC0(m);
	else {
		emergency_ptr = m;
		FUNC2();
	}
}