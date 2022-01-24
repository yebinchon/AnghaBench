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
struct mic_info {int /*<<< orphan*/  id; scalar_t__ name; struct mic_info* next; } ;
struct dirent {int /*<<< orphan*/ * d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  MICSYSFSDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mic_info* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct mic_info mic_list ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC10(void)
{
	struct mic_info *mic = &mic_list;
	struct dirent *file;
	DIR *dp;
	int cnt = 0;

	dp = FUNC5(MICSYSFSDIR);
	if (!dp)
		return 0;

	while ((file = FUNC6(dp)) != NULL) {
		if (!FUNC9(file->d_name, "mic", 3)) {
			mic->next = FUNC1(1, sizeof(struct mic_info));
			if (mic->next) {
				mic = mic->next;
				mic->id = FUNC0(&file->d_name[3]);
				mic->name = FUNC3(FUNC8(file->d_name) + 16);
				if (mic->name)
					FUNC7(mic->name, file->d_name);
				FUNC4("MIC name %s id %d\n", mic->name,
					mic->id);
				cnt++;
			}
		}
	}

	FUNC2(dp);
	return cnt;
}