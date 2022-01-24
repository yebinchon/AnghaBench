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
struct nfc_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_idx ; 
 int /*<<< orphan*/  nfc_class ; 
 struct nfc_dev* FUNC1 (struct device*) ; 

struct nfc_dev *FUNC2(unsigned int idx)
{
	struct device *d;

	d = FUNC0(&nfc_class, NULL, &idx, match_idx);
	if (!d)
		return NULL;

	return FUNC1(d);
}