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
struct machine {int /*<<< orphan*/  dsos; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dso*) ; 
 struct dso* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,char const*,int) ; 

__attribute__((used)) static struct dso *FUNC3(struct machine *machine, const char *short_name,
					  const char *long_name)
{
	struct dso *dso;

	dso = FUNC1(short_name);
	if (dso != NULL) {
		FUNC0(&machine->dsos, dso);
		FUNC2(dso, long_name, false);
	}

	return dso;
}