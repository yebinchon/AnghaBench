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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct external_find_info {char* dir_pathname; scalar_t__ requested_file_type; char* temp_buffer; int /*<<< orphan*/  wildcard_spec; int /*<<< orphan*/  dir_ptr; } ;
struct dirent {char* d_name; } ;

/* Variables and functions */
 scalar_t__ REQUEST_DIR_ONLY ; 
 scalar_t__ REQUEST_FILE_ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

char *FUNC10(void *dir_handle)
{
	struct external_find_info *external_info = dir_handle;
	struct dirent *dir_entry;
	char *temp_str;
	int str_len;
	struct stat temp_stat;
	int err;

	while ((dir_entry = FUNC5(external_info->dir_ptr))) {
		if (!FUNC2
		    (external_info->wildcard_spec, dir_entry->d_name, 0)) {
			if (dir_entry->d_name[0] == '.') {
				continue;
			}

			str_len = FUNC9(dir_entry->d_name) +
			    FUNC9(external_info->dir_pathname) + 2;

			temp_str = FUNC1(str_len, 1);
			if (!temp_str) {
				FUNC3(stderr,
					"Could not allocate buffer for temporary string\n");
				return (NULL);
			}

			FUNC8(temp_str, external_info->dir_pathname);
			FUNC7(temp_str, "/");
			FUNC7(temp_str, dir_entry->d_name);

			err = FUNC6(temp_str, &temp_stat);
			if (err == -1) {
				FUNC3(stderr,
					"Cannot stat file (should not happen) - %s\n",
					temp_str);
				FUNC4(temp_str);
				return (NULL);
			}

			FUNC4(temp_str);

			if ((FUNC0(temp_stat.st_mode)
			     && (external_info->requested_file_type ==
				 REQUEST_DIR_ONLY))
			    || ((!FUNC0(temp_stat.st_mode)
				 && external_info->requested_file_type ==
				 REQUEST_FILE_ONLY))) {

				/* copy to a temp buffer because dir_entry struct is on the stack */

				FUNC8(external_info->temp_buffer,
				       dir_entry->d_name);
				return (external_info->temp_buffer);
			}
		}
	}

	return (NULL);
}