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
struct TYPE_2__ {int /*<<< orphan*/ * backend_file; } ;
struct mic_info {int id; TYPE_1__ mic_virtblk; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 char* mic_config_dir ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,scalar_t__) ; 
 char* virtblk_backend ; 

__attribute__((used)) static bool
FUNC10(struct mic_info *mic)
{
	FILE *config;
	char buff[PATH_MAX], *line, *evv, *p;

	FUNC5(buff, PATH_MAX, "%s/mpssd%03d.conf", mic_config_dir, mic->id);
	config = FUNC2(buff, "r");
	if (config == NULL)
		return false;
	do {  /* look for "virtblk_backend=XXXX" */
		line = FUNC1(buff, PATH_MAX, config);
		if (line == NULL)
			break;
		if (*line == '#')
			continue;
		p = FUNC6(line, '\n');
		if (p)
			*p = '\0';
	} while (FUNC9(line, virtblk_backend, FUNC8(virtblk_backend)) != 0);
	FUNC0(config);
	if (line == NULL)
		return false;
	evv = FUNC6(line, '=');
	if (evv == NULL)
		return false;
	mic->mic_virtblk.backend_file = FUNC3(FUNC8(evv) + 1);
	if (mic->mic_virtblk.backend_file == NULL) {
		FUNC4("%s %d can't allocate memory\n", mic->name, mic->id);
		return false;
	}
	FUNC7(mic->mic_virtblk.backend_file, evv + 1);
	return true;
}