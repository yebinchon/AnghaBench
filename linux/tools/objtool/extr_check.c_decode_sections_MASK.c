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
struct objtool_file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct objtool_file*) ; 
 int FUNC1 (struct objtool_file*) ; 
 int FUNC2 (struct objtool_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct objtool_file*) ; 
 int FUNC4 (struct objtool_file*) ; 
 int FUNC5 (struct objtool_file*) ; 
 int FUNC6 (struct objtool_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct objtool_file*) ; 
 int FUNC8 (struct objtool_file*) ; 
 int /*<<< orphan*/  FUNC9 (struct objtool_file*) ; 
 int FUNC10 (struct objtool_file*) ; 
 int FUNC11 (struct objtool_file*) ; 

__attribute__((used)) static int FUNC12(struct objtool_file *file)
{
	int ret;

	FUNC9(file);

	ret = FUNC8(file);
	if (ret)
		return ret;

	ret = FUNC1(file);
	if (ret)
		return ret;

	FUNC3(file);
	FUNC7(file);

	ret = FUNC2(file);
	if (ret)
		return ret;

	ret = FUNC4(file);
	if (ret)
		return ret;

	ret = FUNC6(file);
	if (ret)
		return ret;

	ret = FUNC0(file);
	if (ret)
		return ret;

	ret = FUNC5(file);
	if (ret)
		return ret;

	ret = FUNC11(file);
	if (ret)
		return ret;

	ret = FUNC10(file);
	if (ret)
		return ret;

	return 0;
}