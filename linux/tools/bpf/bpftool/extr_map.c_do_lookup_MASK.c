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
struct bpf_map_info {int /*<<< orphan*/  key_size; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int FUNC0 (struct bpf_map_info*,void**,void**) ; 
 int FUNC1 (int,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char**,struct bpf_map_info*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_map_info*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	void *key, *value;
	int err;
	int fd;

	if (argc < 2)
		FUNC12();

	fd = FUNC6(&argc, &argv, &info, &len);
	if (fd < 0)
		return -1;

	err = FUNC0(&info, &key, &value);
	if (err)
		goto exit_free;

	err = FUNC8(argv, &info, key, NULL, info.key_size, 0, NULL, NULL);
	if (err)
		goto exit_free;

	err = FUNC1(fd, key, value);
	if (err) {
		if (errno == ENOENT) {
			if (json_output) {
				FUNC5(json_wtr);
			} else {
				FUNC10("key:\n");
				FUNC3(stdout, key, info.key_size, " ");
				FUNC10("\n\nNot found\n");
			}
		} else {
			FUNC7("lookup failed: %s", FUNC11(errno));
		}

		goto exit_free;
	}

	/* here means bpf_map_lookup_elem() succeeded */
	FUNC9(&info, key, value);

exit_free:
	FUNC4(key);
	FUNC4(value);
	FUNC2(fd);

	return err;
}