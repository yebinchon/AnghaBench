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
struct bpf_verifier_env {int dummy; } ;
struct bpf_prog {scalar_t__ type; int /*<<< orphan*/  aux; } ;
struct bpf_map {struct bpf_map* inner_map_meta; } ;

/* Variables and functions */
 scalar_t__ BPF_PROG_TYPE_PERF_EVENT ; 
 scalar_t__ BPF_PROG_TYPE_SOCKET_FILTER ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*,struct bpf_map*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_verifier_env*,char*) ; 

__attribute__((used)) static int FUNC7(struct bpf_verifier_env *env,
					struct bpf_map *map,
					struct bpf_prog *prog)

{
	/* Make sure that BPF_PROG_TYPE_PERF_EVENT programs only use
	 * preallocated hash maps, since doing memory allocation
	 * in overflow_handler can crash depending on where nmi got
	 * triggered.
	 */
	if (prog->type == BPF_PROG_TYPE_PERF_EVENT) {
		if (!FUNC3(map)) {
			FUNC6(env, "perf_event programs can only use preallocated hash map\n");
			return -EINVAL;
		}
		if (map->inner_map_meta &&
		    !FUNC3(map->inner_map_meta)) {
			FUNC6(env, "perf_event programs can only use preallocated inner hash map\n");
			return -EINVAL;
		}
	}

	if ((FUNC4(prog->type) ||
	     prog->type == BPF_PROG_TYPE_SOCKET_FILTER) &&
	    FUNC5(map)) {
		FUNC6(env, "tracing progs cannot use bpf_spin_lock yet\n");
		return -EINVAL;
	}

	if ((FUNC2(prog->aux) || FUNC0(map)) &&
	    !FUNC1(prog, map)) {
		FUNC6(env, "offload device mismatch between prog and map\n");
		return -EINVAL;
	}

	return 0;
}