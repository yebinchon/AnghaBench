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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_id ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char* KVP_NET_DIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC10(char *guid)
{
	DIR *dir;
	struct dirent *entry;
	FILE    *file;
	char    *p, *x;
	char    *if_name = NULL;
	char    buf[256];
	char dev_id[PATH_MAX];

	dir = FUNC4(KVP_NET_DIR);
	if (dir == NULL)
		return NULL;

	while ((entry = FUNC5(dir)) != NULL) {
		/*
		 * Set the state for the next pass.
		 */
		FUNC6(dev_id, sizeof(dev_id), "%s%s/device/device_id",
			 KVP_NET_DIR, entry->d_name);

		file = FUNC3(dev_id, "r");
		if (file == NULL)
			continue;

		p = FUNC2(buf, sizeof(buf), file);
		if (p) {
			x = FUNC7(p, '\n');
			if (x)
				*x = '\0';

			if (!FUNC8(p, guid)) {
				/*
				 * Found the guid match; return the interface
				 * name. The caller will free the memory.
				 */
				if_name = FUNC9(entry->d_name);
				FUNC1(file);
				break;
			}
		}
		FUNC1(file);
	}

	FUNC0(dir);
	return if_name;
}