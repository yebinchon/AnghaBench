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
struct bpf_map_priv {int /*<<< orphan*/  ops_list; } ;
struct bpf_map_op {int /*<<< orphan*/  list; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int BPF_LOADER_ERRNO__INTERNAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bpf_map_priv*) ; 
 int FUNC2 (struct bpf_map_priv*) ; 
 char* FUNC3 (struct bpf_map*) ; 
 struct bpf_map_priv* FUNC4 (struct bpf_map*) ; 
 scalar_t__ FUNC5 (struct bpf_map*,struct bpf_map_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_map_priv__clear ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_map_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 struct bpf_map_priv* FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct bpf_map *map, struct bpf_map_op *op)
{
	const char *map_name = FUNC3(map);
	struct bpf_map_priv *priv = FUNC4(map);

	if (FUNC1(priv)) {
		FUNC8("Failed to get private from map %s\n", map_name);
		return FUNC2(priv);
	}

	if (!priv) {
		priv = FUNC9(sizeof(*priv));
		if (!priv) {
			FUNC8("Not enough memory to alloc map private\n");
			return -ENOMEM;
		}
		FUNC0(&priv->ops_list);

		if (FUNC5(map, priv, bpf_map_priv__clear)) {
			FUNC6(priv);
			return -BPF_LOADER_ERRNO__INTERNAL;
		}
	}

	FUNC7(&op->list, &priv->ops_list);
	return 0;
}