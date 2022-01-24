#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct btf_raw_test {int mapv_kind; char* descr; char* map_name; unsigned int max_entries; int percpu_map; int ordered_map; int lossless_map; int /*<<< orphan*/  value_type_id; int /*<<< orphan*/  key_type_id; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct bpf_create_map_attr {char* name; unsigned int max_entries; int btf_fd; int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf_key_type_id; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  pin_path ;
typedef  int /*<<< orphan*/  expected_line ;
typedef  enum pprint_mapv_kind_t { ____Placeholder_pprint_mapv_kind_t } pprint_mapv_kind_t ;
struct TYPE_2__ {scalar_t__ always_log; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_LOG_BUF_SIZE ; 
 scalar_t__ FUNC0 (int,char*,...) ; 
 TYPE_1__ args ; 
 unsigned int FUNC1 (char*) ; 
 int FUNC2 (struct bpf_create_map_attr*) ; 
 int FUNC3 (char*,unsigned int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int*,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char*) ; 
 char* btf_log_buf ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int,int) ; 
 int FUNC9 (char*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int,char*,int,int,unsigned int,int,void*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdr_tmpl ; 
 struct btf_raw_test* pprint_test_template ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int,void*,unsigned int,int,int) ; 
 void* FUNC20 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static int FUNC22(int test_num)
{
	const struct btf_raw_test *test = &pprint_test_template[test_num];
	enum pprint_mapv_kind_t mapv_kind = test->mapv_kind;
	struct bpf_create_map_attr create_attr = {};
	bool ordered_map, lossless_map, percpu_map;
	int err, ret, num_cpus, rounded_value_size;
	unsigned int key, nr_read_elems;
	int map_fd = -1, btf_fd = -1;
	unsigned int raw_btf_size;
	char expected_line[255];
	FILE *pin_file = NULL;
	char pin_path[255];
	size_t line_len = 0;
	char *line = NULL;
	void *mapv = NULL;
	uint8_t *raw_btf;
	ssize_t nread;

	FUNC13(stderr, "%s(#%d)......", test->descr, test_num);
	raw_btf = FUNC7(&hdr_tmpl, test->raw_types,
				 test->str_sec, test->str_sec_size,
				 &raw_btf_size, NULL);

	if (!raw_btf)
		return -1;

	*btf_log_buf = '\0';
	btf_fd = FUNC3(raw_btf, raw_btf_size,
			      btf_log_buf, BTF_LOG_BUF_SIZE,
			      args.always_log);
	FUNC14(raw_btf);

	if (FUNC0(btf_fd == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	create_attr.name = test->map_name;
	create_attr.map_type = test->map_type;
	create_attr.key_size = test->key_size;
	create_attr.value_size = test->value_size;
	create_attr.max_entries = test->max_entries;
	create_attr.btf_fd = btf_fd;
	create_attr.btf_key_type_id = test->key_type_id;
	create_attr.btf_value_type_id = test->value_type_id;

	map_fd = FUNC2(&create_attr);
	if (FUNC0(map_fd == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	ret = FUNC20(pin_path, sizeof(pin_path), "%s/%s",
		       "/sys/fs/bpf", test->map_name);

	if (FUNC0(ret == sizeof(pin_path), "pin_path %s/%s is too long",
		  "/sys/fs/bpf", test->map_name)) {
		err = -1;
		goto done;
	}

	err = FUNC6(map_fd, pin_path);
	if (FUNC0(err, "bpf_obj_pin(%s): errno:%d.", pin_path, errno))
		goto done;

	percpu_map = test->percpu_map;
	num_cpus = percpu_map ? FUNC5() : 1;
	rounded_value_size = FUNC18(FUNC16(mapv_kind), 8);
	mapv = FUNC8(num_cpus, rounded_value_size);
	if (FUNC0(!mapv, "mapv allocation failure")) {
		err = -1;
		goto done;
	}

	for (key = 0; key < test->max_entries; key++) {
		FUNC19(mapv_kind, mapv, key, num_cpus, rounded_value_size);
		FUNC4(map_fd, &key, mapv, 0);
	}

	pin_file = FUNC12(pin_path, "r");
	if (FUNC0(!pin_file, "fopen(%s): errno:%d", pin_path, errno)) {
		err = -1;
		goto done;
	}

	/* Skip lines start with '#' */
	while ((nread = FUNC17(&line, &line_len, pin_file)) > 0 &&
	       *line == '#')
		;

	if (FUNC0(nread <= 0, "Unexpected EOF")) {
		err = -1;
		goto done;
	}

	nr_read_elems = 0;
	ordered_map = test->ordered_map;
	lossless_map = test->lossless_map;
	do {
		ssize_t nexpected_line;
		unsigned int next_key;
		void *cmapv;
		int cpu;

		next_key = ordered_map ? nr_read_elems : FUNC1(line);
		FUNC19(mapv_kind, mapv, next_key, num_cpus, rounded_value_size);
		cmapv = mapv;

		for (cpu = 0; cpu < num_cpus; cpu++) {
			if (percpu_map) {
				/* for percpu map, the format looks like:
				 * <key>: {
				 *	cpu0: <value_on_cpu0>
				 *	cpu1: <value_on_cpu1>
				 *	...
				 *	cpun: <value_on_cpun>
				 * }
				 *
				 * let us verify the line containing the key here.
				 */
				if (cpu == 0) {
					nexpected_line = FUNC20(expected_line,
								  sizeof(expected_line),
								  "%u: {\n",
								  next_key);

					err = FUNC9(expected_line, nexpected_line,
							 sizeof(expected_line), line);
					if (err == -1)
						goto done;
				}

				/* read value@cpu */
				nread = FUNC17(&line, &line_len, pin_file);
				if (nread < 0)
					break;
			}

			nexpected_line = FUNC15(mapv_kind, expected_line,
								  sizeof(expected_line),
								  percpu_map, next_key,
								  cpu, cmapv);
			err = FUNC9(expected_line, nexpected_line,
					 sizeof(expected_line), line);
			if (err == -1)
				goto done;

			cmapv = cmapv + rounded_value_size;
		}

		if (percpu_map) {
			/* skip the last bracket for the percpu map */
			nread = FUNC17(&line, &line_len, pin_file);
			if (nread < 0)
				break;
		}

		nread = FUNC17(&line, &line_len, pin_file);
	} while (++nr_read_elems < test->max_entries && nread > 0);

	if (lossless_map &&
	    FUNC0(nr_read_elems < test->max_entries,
		  "Unexpected EOF. nr_read_elems:%u test->max_entries:%u",
		  nr_read_elems, test->max_entries)) {
		err = -1;
		goto done;
	}

	if (FUNC0(nread > 0, "Unexpected extra pprint output: %s", line)) {
		err = -1;
		goto done;
	}

	err = 0;

done:
	if (mapv)
		FUNC14(mapv);
	if (!err)
		FUNC13(stderr, "OK");
	if (*btf_log_buf && (err || args.always_log))
		FUNC13(stderr, "\n%s", btf_log_buf);
	if (btf_fd != -1)
		FUNC10(btf_fd);
	if (map_fd != -1)
		FUNC10(map_fd);
	if (pin_file)
		FUNC11(pin_file);
	FUNC21(pin_path);
	FUNC14(line);

	return err;
}