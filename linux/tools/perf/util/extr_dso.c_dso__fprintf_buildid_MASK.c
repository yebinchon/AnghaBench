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
struct dso {int /*<<< orphan*/  build_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SBUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

size_t FUNC2(struct dso *dso, FILE *fp)
{
	char sbuild_id[SBUILD_ID_SIZE];

	FUNC0(dso->build_id, sizeof(dso->build_id), sbuild_id);
	return FUNC1(fp, "%s", sbuild_id);
}