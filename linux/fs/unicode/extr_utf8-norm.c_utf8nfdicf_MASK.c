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
struct utf8data {unsigned int maxage; } ;

/* Variables and functions */
 int FUNC0 (struct utf8data const*) ; 
 struct utf8data const* utf8nfdicfdata ; 

const struct utf8data *FUNC1(unsigned int maxage)
{
	int i = FUNC0(utf8nfdicfdata) - 1;

	while (maxage < utf8nfdicfdata[i].maxage)
		i--;
	if (maxage > utf8nfdicfdata[i].maxage)
		return NULL;
	return &utf8nfdicfdata[i];
}