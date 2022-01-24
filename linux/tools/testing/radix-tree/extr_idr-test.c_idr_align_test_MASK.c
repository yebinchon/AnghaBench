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
struct idr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct idr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idr*) ; 
 char* FUNC3 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idr*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct idr*) ; 
 int /*<<< orphan*/  FUNC6 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct idr*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct idr *idr)
{
	char name[] = "Motorola 68000";
	int i, id;
	void *entry;

	for (i = 0; i < 9; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != i);
		FUNC4(idr, entry, id);
	}
	FUNC2(idr);

	for (i = 1; i < 10; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != i - 1);
		FUNC4(idr, entry, id);
	}
	FUNC2(idr);

	for (i = 2; i < 11; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != i - 2);
		FUNC4(idr, entry, id);
	}
	FUNC2(idr);

	for (i = 3; i < 12; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != i - 3);
		FUNC4(idr, entry, id);
	}
	FUNC2(idr);

	for (i = 0; i < 8; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != 0);
		FUNC0(FUNC1(idr, &name[i + 1], 0, 0, GFP_KERNEL) != 1);
		FUNC4(idr, entry, id);
		FUNC6(idr, 1);
		FUNC4(idr, entry, id);
		FUNC6(idr, 0);
		FUNC0(!FUNC5(idr));
	}

	for (i = 0; i < 8; i++) {
		FUNC0(FUNC1(idr, NULL, 0, 0, GFP_KERNEL) != 0);
		FUNC4(idr, entry, id);
		FUNC7(idr, &name[i], 0);
		FUNC4(idr, entry, id);
		FUNC0(FUNC3(idr, 0) != &name[i]);
		FUNC6(idr, 0);
	}

	for (i = 0; i < 8; i++) {
		FUNC0(FUNC1(idr, &name[i], 0, 0, GFP_KERNEL) != 0);
		FUNC0(FUNC1(idr, NULL, 0, 0, GFP_KERNEL) != 1);
		FUNC6(idr, 1);
		FUNC4(idr, entry, id);
		FUNC7(idr, &name[i + 1], 0);
		FUNC4(idr, entry, id);
		FUNC6(idr, 0);
	}
}