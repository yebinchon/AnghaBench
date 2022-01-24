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
struct btf_dumper {int is_plain_text; int /*<<< orphan*/ * jw; struct btf* btf; } ;
struct btf {int dummy; } ;
struct bpf_map_info {int /*<<< orphan*/  btf_id; } ;
typedef  int /*<<< orphan*/  json_writer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct btf**) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_dumper*,struct bpf_map_info*,void*,void*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map_info*,void*,void*,struct btf*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_map_info*,void*,void*) ; 

__attribute__((used)) static void FUNC9(struct bpf_map_info *info, void *key,
			    void *value)
{
	json_writer_t *btf_wtr;
	struct btf *btf = NULL;
	int err;

	err = FUNC1(info->btf_id, &btf);
	if (err) {
		FUNC5("failed to get btf");
		return;
	}

	if (json_output) {
		FUNC7(info, key, value, btf);
	} else if (btf) {
		/* if here json_wtr wouldn't have been initialised,
		 * so let's create separate writer for btf
		 */
		btf_wtr = FUNC3();
		if (!btf_wtr) {
			FUNC6("failed to create json writer for btf. falling back to plain output");
			FUNC0(btf);
			btf = NULL;
			FUNC8(info, key, value);
		} else {
			struct btf_dumper d = {
				.btf = btf,
				.jw = btf_wtr,
				.is_plain_text = true,
			};

			FUNC2(&d, info, key, value);
			FUNC4(&btf_wtr);
		}
	} else {
		FUNC8(info, key, value);
	}
	FUNC0(btf);
}