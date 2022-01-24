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
#define  KEY_EXIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dialog_input_result ; 
 int /*<<< orphan*/  dialog_input_result_len ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  load_config_help ; 
 int /*<<< orphan*/  load_config_text ; 
 int /*<<< orphan*/  main_window ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	while (1) {
		int res;
		res = FUNC2(main_window,
				NULL, load_config_text,
				filename,
				&dialog_input_result,
				&dialog_input_result_len);
		switch (res) {
		case 0:
			if (!dialog_input_result[0])
				return;
			if (!FUNC1(dialog_input_result)) {
				FUNC3(dialog_input_result);
				FUNC5(1);
				return;
			}
			FUNC0(main_window, "File does not exist!", 0);
			break;
		case 1:
			FUNC4(main_window,
					"Load Alternate Configuration",
					load_config_help);
			break;
		case KEY_EXIT:
			return;
		}
	}
}