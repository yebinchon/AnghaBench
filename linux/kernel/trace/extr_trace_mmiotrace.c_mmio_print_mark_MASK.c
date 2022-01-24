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
struct trace_seq {int dummy; } ;
struct trace_iterator {int /*<<< orphan*/  ts; struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {int dummy; } ;
struct print_entry {char* buf; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_PER_SEC ; 
 unsigned long FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,unsigned int,unsigned long,char const*) ; 

__attribute__((used)) static enum print_line_t FUNC4(struct trace_iterator *iter)
{
	struct trace_entry *entry = iter->ent;
	struct print_entry *print = (struct print_entry *)entry;
	const char *msg		= print->buf;
	struct trace_seq *s	= &iter->seq;
	unsigned long long t	= FUNC1(iter->ts);
	unsigned long usec_rem	= FUNC0(t, USEC_PER_SEC);
	unsigned secs		= (unsigned long)t;

	/* The trailing newline must be in the message. */
	FUNC3(s, "MARK %u.%06lu %s", secs, usec_rem, msg);

	return FUNC2(s);
}