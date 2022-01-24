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
typedef  union bpf_attr {int dummy; } bpf_attr ;
struct bpf_map {int dummy; } ;
struct bpf_dtab {struct bpf_map map; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 struct bpf_map* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bpf_dtab*,union bpf_attr*) ; 
 int /*<<< orphan*/  dev_map_list ; 
 int /*<<< orphan*/  dev_map_lock ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_dtab*) ; 
 struct bpf_dtab* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bpf_map *FUNC8(union bpf_attr *attr)
{
	struct bpf_dtab *dtab;
	int err;

	if (!FUNC1(CAP_NET_ADMIN))
		return FUNC0(-EPERM);

	dtab = FUNC4(sizeof(*dtab), GFP_USER);
	if (!dtab)
		return FUNC0(-ENOMEM);

	err = FUNC2(dtab, attr);
	if (err) {
		FUNC3(dtab);
		return FUNC0(err);
	}

	FUNC6(&dev_map_lock);
	FUNC5(&dtab->list, &dev_map_list);
	FUNC7(&dev_map_lock);

	return &dtab->map;
}