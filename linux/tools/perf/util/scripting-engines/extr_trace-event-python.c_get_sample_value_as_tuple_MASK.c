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
struct sample_read_value {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static PyObject *FUNC4(struct sample_read_value *value)
{
	PyObject *t;

	t = FUNC1(2);
	if (!t)
		FUNC3("couldn't create Python tuple");
	FUNC2(t, 0, FUNC0(value->id));
	FUNC2(t, 1, FUNC0(value->value));
	return t;
}