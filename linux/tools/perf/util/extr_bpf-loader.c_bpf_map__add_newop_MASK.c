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
struct bpf_map_op {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 struct bpf_map_op* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bpf_map_op*) ; 
 int FUNC2 (struct bpf_map*,struct bpf_map_op*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map_op*) ; 
 struct bpf_map_op* FUNC4 (struct parse_events_term*) ; 

__attribute__((used)) static struct bpf_map_op *
FUNC5(struct bpf_map *map, struct parse_events_term *term)
{
	struct bpf_map_op *op;
	int err;

	op = FUNC4(term);
	if (FUNC1(op))
		return op;

	err = FUNC2(map, op);
	if (err) {
		FUNC3(op);
		return FUNC0(err);
	}
	return op;
}