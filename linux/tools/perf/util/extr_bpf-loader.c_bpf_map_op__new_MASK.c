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
struct parse_events_term {int dummy; } ;
struct bpf_map_op {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct bpf_map_op* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bpf_map_op*,struct parse_events_term*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map_op*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct bpf_map_op* FUNC5 (int) ; 

__attribute__((used)) static struct bpf_map_op *
FUNC6(struct parse_events_term *term)
{
	struct bpf_map_op *op;
	int err;

	op = FUNC5(sizeof(*op));
	if (!op) {
		FUNC4("Failed to alloc bpf_map_op\n");
		return FUNC0(-ENOMEM);
	}
	FUNC1(&op->list);

	err = FUNC2(op, term);
	if (err) {
		FUNC3(op);
		return FUNC0(err);
	}
	return op;
}