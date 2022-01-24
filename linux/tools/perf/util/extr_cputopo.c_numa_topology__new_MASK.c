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
typedef  int u32 ;
struct perf_cpu_map {int /*<<< orphan*/ * map; scalar_t__ nr; } ;
struct numa_topology {int nr; int /*<<< orphan*/ * nodes; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  NODE_ONLINE_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct numa_topology*) ; 
 struct perf_cpu_map* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct numa_topology* FUNC11 (int) ; 

struct numa_topology *FUNC12(void)
{
	struct perf_cpu_map *node_map = NULL;
	struct numa_topology *tp = NULL;
	char path[MAXPATHLEN];
	char *buf = NULL;
	size_t len = 0;
	u32 nr, i;
	FILE *fp;
	char *c;

	FUNC8(path, MAXPATHLEN, NODE_ONLINE_FMT,
		  FUNC10());

	fp = FUNC1(path, "r");
	if (!fp)
		return NULL;

	if (FUNC3(&buf, &len, fp) <= 0)
		goto out;

	c = FUNC9(buf, '\n');
	if (c)
		*c = '\0';

	node_map = FUNC6(buf);
	if (!node_map)
		goto out;

	nr = (u32) node_map->nr;

	tp = FUNC11(sizeof(*tp) + sizeof(tp->nodes[0])*nr);
	if (!tp)
		goto out;

	tp->nr = nr;

	for (i = 0; i < nr; i++) {
		if (FUNC4(&tp->nodes[i], node_map->map[i])) {
			FUNC5(tp);
			tp = NULL;
			break;
		}
	}

out:
	FUNC2(buf);
	FUNC0(fp);
	FUNC7(node_map);
	return tp;
}