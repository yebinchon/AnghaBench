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
struct nf_log_buf {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  emergency_ptr ; 
 struct nf_log_buf* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 struct nf_log_buf* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct nf_log_buf *FUNC4(void)
{
	struct nf_log_buf *m = FUNC0(sizeof(*m), GFP_ATOMIC);

	if (FUNC2(!m)) {
		FUNC1();
		do {
			m = FUNC3(&emergency_ptr, NULL);
		} while (!m);
	}
	m->count = 0;
	return m;
}