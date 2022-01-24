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
struct TYPE_2__ {scalar_t__ fd; scalar_t__ file_size; } ;
struct dso {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*) ; 

__attribute__((used)) static void FUNC2(struct dso *dso)
{
	if (dso->data.fd >= 0) {
		FUNC0(dso->data.fd);
		dso->data.fd = -1;
		dso->data.file_size = 0;
		FUNC1(dso);
	}
}