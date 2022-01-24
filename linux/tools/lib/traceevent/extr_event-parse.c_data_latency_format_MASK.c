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
struct trace_seq {scalar_t__ state; int /*<<< orphan*/  buffer; } ;
struct tep_record {void* data; } ;
struct tep_handle {int dummy; } ;

/* Variables and functions */
 unsigned int TRACE_FLAG_HARDIRQ ; 
 unsigned int TRACE_FLAG_IRQS_NOSUPPORT ; 
 unsigned int TRACE_FLAG_IRQS_OFF ; 
 unsigned int TRACE_FLAG_NEED_RESCHED ; 
 unsigned int TRACE_FLAG_SOFTIRQ ; 
 scalar_t__ TRACE_SEQ__MEM_ALLOC_FAILED ; 
 unsigned int FUNC0 (struct tep_handle*,void*) ; 
 int FUNC1 (struct tep_handle*,void*) ; 
 int FUNC2 (struct tep_handle*,void*) ; 
 unsigned int FUNC3 (struct tep_handle*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_seq*) ; 

__attribute__((used)) static void FUNC9(struct tep_handle *tep, struct trace_seq *s,
				char *format, struct tep_record *record)
{
	static int check_lock_depth = 1;
	static int check_migrate_disable = 1;
	static int lock_depth_exists;
	static int migrate_disable_exists;
	unsigned int lat_flags;
	struct trace_seq sq;
	unsigned int pc;
	int lock_depth = 0;
	int migrate_disable = 0;
	int hardirq;
	int softirq;
	void *data = record->data;

	FUNC5(&sq);
	lat_flags = FUNC0(tep, data);
	pc = FUNC3(tep, data);
	/* lock_depth may not always exist */
	if (lock_depth_exists)
		lock_depth = FUNC1(tep, data);
	else if (check_lock_depth) {
		lock_depth = FUNC1(tep, data);
		if (lock_depth < 0)
			check_lock_depth = 0;
		else
			lock_depth_exists = 1;
	}

	/* migrate_disable may not always exist */
	if (migrate_disable_exists)
		migrate_disable = FUNC2(tep, data);
	else if (check_migrate_disable) {
		migrate_disable = FUNC2(tep, data);
		if (migrate_disable < 0)
			check_migrate_disable = 0;
		else
			migrate_disable_exists = 1;
	}

	hardirq = lat_flags & TRACE_FLAG_HARDIRQ;
	softirq = lat_flags & TRACE_FLAG_SOFTIRQ;

	FUNC6(&sq, "%c%c%c",
	       (lat_flags & TRACE_FLAG_IRQS_OFF) ? 'd' :
	       (lat_flags & TRACE_FLAG_IRQS_NOSUPPORT) ?
	       'X' : '.',
	       (lat_flags & TRACE_FLAG_NEED_RESCHED) ?
	       'N' : '.',
	       (hardirq && softirq) ? 'H' :
	       hardirq ? 'h' : softirq ? 's' : '.');

	if (pc)
		FUNC6(&sq, "%x", pc);
	else
		FUNC6(&sq, ".");

	if (migrate_disable_exists) {
		if (migrate_disable < 0)
			FUNC6(&sq, ".");
		else
			FUNC6(&sq, "%d", migrate_disable);
	}

	if (lock_depth_exists) {
		if (lock_depth < 0)
			FUNC6(&sq, ".");
		else
			FUNC6(&sq, "%d", lock_depth);
	}

	if (sq.state == TRACE_SEQ__MEM_ALLOC_FAILED) {
		s->state = TRACE_SEQ__MEM_ALLOC_FAILED;
		return;
	}

	FUNC8(&sq);
	FUNC7(s, sq.buffer);
	FUNC4(&sq);
	FUNC8(s);
}