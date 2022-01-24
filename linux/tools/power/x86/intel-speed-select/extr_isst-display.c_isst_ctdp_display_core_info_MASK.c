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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned int) ; 

void FUNC4(int cpu, FILE *outf, char *prefix,
				 unsigned int val)
{
	char header[256];
	char value[256];

	FUNC3(header, sizeof(header), "package-%d",
		 FUNC2(cpu));
	FUNC0(outf, 1, header, NULL);
	FUNC3(header, sizeof(header), "die-%d", FUNC1(cpu));
	FUNC0(outf, 2, header, NULL);
	FUNC3(header, sizeof(header), "cpu-%d", cpu);
	FUNC0(outf, 3, header, NULL);

	FUNC3(value, sizeof(value), "%u", val);
	FUNC0(outf, 4, prefix, value);

	FUNC0(outf, 1, NULL, NULL);
}