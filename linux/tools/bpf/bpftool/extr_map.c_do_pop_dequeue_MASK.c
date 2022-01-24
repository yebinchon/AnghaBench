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
struct bpf_map_info {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int FUNC0 (struct bpf_map_info*,void**,void**) ; 
 int FUNC1 (int,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map_info*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	void *key, *value;
	int err;
	int fd;

	if (argc < 2)
		FUNC10();

	fd = FUNC5(&argc, &argv, &info, &len);
	if (fd < 0)
		return -1;

	err = FUNC0(&info, &key, &value);
	if (err)
		goto exit_free;

	err = FUNC1(fd, key, value);
	if (err) {
		if (errno == ENOENT) {
			if (json_output)
				FUNC4(json_wtr);
			else
				FUNC8("Error: empty map\n");
		} else {
			FUNC6("pop failed: %s", FUNC9(errno));
		}

		goto exit_free;
	}

	FUNC7(&info, key, value);

exit_free:
	FUNC3(key);
	FUNC3(value);
	FUNC2(fd);

	return err;
}