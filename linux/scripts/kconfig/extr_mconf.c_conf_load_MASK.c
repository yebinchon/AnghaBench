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

/* Variables and functions */
#define  KEY_ESC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * dialog_input_result ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  load_config_help ; 
 int /*<<< orphan*/  load_config_text ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void)
{

	while (1) {
		int res;
		FUNC1();
		res = FUNC2(NULL, load_config_text,
				      11, 55, filename);
		switch(res) {
		case 0:
			if (!dialog_input_result[0])
				return;
			if (!FUNC0(dialog_input_result)) {
				FUNC3(dialog_input_result);
				FUNC6(1);
				return;
			}
			FUNC5(NULL, "File does not exist!", 5, 38);
			break;
		case 1:
			FUNC4("Load Alternate Configuration", load_config_help);
			break;
		case KEY_ESC:
			return;
		}
	}
}