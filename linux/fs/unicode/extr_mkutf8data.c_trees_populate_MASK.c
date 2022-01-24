#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unicode_data {scalar_t__ gen; scalar_t__ correction; } ;
struct TYPE_3__ {char* type; int maxage; } ;

/* Variables and functions */
 struct unicode_data* FUNC0 (struct unicode_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,struct unicode_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* trees ; 
 int trees_count ; 
 struct unicode_data* unicode_data ; 
 int FUNC3 (char*,unsigned int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC4(void)
{
	struct unicode_data *data;
	unsigned int unichar;
	char keyval[4];
	int keylen;
	int i;

	for (i = 0; i != trees_count; i++) {
		if (verbose > 0) {
			FUNC2("Populating %s_%x\n",
				trees[i].type, trees[i].maxage);
		}
		for (unichar = 0; unichar != 0x110000; unichar++) {
			if (unicode_data[unichar].gen < 0)
				continue;
			keylen = FUNC3(keyval, unichar);
			data = FUNC0(&unicode_data[unichar]);
			if (data->correction <= trees[i].maxage)
				data = &unicode_data[unichar];
			FUNC1(&trees[i], keyval, keylen, data);
		}
	}
}