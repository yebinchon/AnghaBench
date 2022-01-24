#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  open_entry; } ;
struct dso {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  dso__data_open ; 
 int /*<<< orphan*/  dso__data_open_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dso *dso)
{
	FUNC0(&dso->data.open_entry, &dso__data_open);
	dso__data_open_cnt++;
}