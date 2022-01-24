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
struct trace_iterator {struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int dummy; } ;
struct bprint_entry {int /*<<< orphan*/  buf; int /*<<< orphan*/  fmt; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bprint_entry*,struct trace_entry*) ; 
 int FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum print_line_t FUNC3(struct trace_iterator *iter)
{
	struct trace_seq *s = &iter->seq;
	struct trace_entry *entry = iter->ent;
	struct bprint_entry *field;

	FUNC0(field, entry);

	FUNC2(s, field->fmt, field->buf);

	return FUNC1(s);
}