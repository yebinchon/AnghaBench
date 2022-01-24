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
typedef  int /*<<< orphan*/  u64 ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  abs_path ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_REG ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char**,int) ; 
 char* FUNC6 (char*) ; 
 char* input_name ; 
 int is_input_name_malloced ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (int,char**) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char**) ; 

__attribute__((used)) static int FUNC16(void)
{
	char *pwd, *options[32], *abs_path[32], *tmp;
	DIR *pwd_dir;
	int nr_options = 0, choice = -1, ret = -1;
	struct dirent *dent;

	pwd = FUNC6("PWD");
	if (!pwd)
		return ret;

	pwd_dir = FUNC9(pwd);
	if (!pwd_dir)
		return ret;

	FUNC8(options, 0, sizeof(options));
	FUNC8(abs_path, 0, sizeof(abs_path));

	while ((dent = FUNC10(pwd_dir))) {
		char path[PATH_MAX];
		u64 magic;
		char *name = dent->d_name;
		FILE *file;

		if (!(dent->d_type == DT_REG))
			continue;

		FUNC11(path, sizeof(path), "%s/%s", pwd, name);

		file = FUNC2(path, "r");
		if (!file)
			continue;

		if (FUNC3(&magic, 1, 8, file) < 8)
			goto close_file_and_continue;

		if (FUNC7(magic)) {
			options[nr_options] = FUNC12(name);
			if (!options[nr_options])
				goto close_file_and_continue;

			abs_path[nr_options] = FUNC12(path);
			if (!abs_path[nr_options]) {
				FUNC15(&options[nr_options]);
				FUNC14("Can't search all data files due to memory shortage.\n");
				FUNC1(file);
				break;
			}

			nr_options++;
		}

close_file_and_continue:
		FUNC1(file);
		if (nr_options >= 32) {
			FUNC14("Too many perf data files in PWD!\n"
				    "Only the first 32 files will be listed.\n");
			break;
		}
	}
	FUNC0(pwd_dir);

	if (nr_options) {
		choice = FUNC13(nr_options, options);
		if (choice < nr_options && choice >= 0) {
			tmp = FUNC12(abs_path[choice]);
			if (tmp) {
				if (is_input_name_malloced)
					FUNC4((void *)input_name);
				input_name = tmp;
				is_input_name_malloced = true;
				ret = 0;
			} else
				FUNC14("Data switch failed due to memory shortage!\n");
		}
	}

	FUNC5(options, nr_options);
	FUNC5(abs_path, nr_options);
	return ret;
}