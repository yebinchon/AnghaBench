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
struct nci_dev {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  NCI_UP ; 
 int FUNC0 (struct nci_dev*,void (*) (struct nci_dev*,unsigned long),unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline int FUNC4(struct nci_dev *ndev,
		       void (*req)(struct nci_dev *ndev,
				   unsigned long opt),
		       unsigned long opt, __u32 timeout)
{
	int rc;

	if (!FUNC3(NCI_UP, &ndev->flags))
		return -ENETDOWN;

	/* Serialize all requests */
	FUNC1(&ndev->req_lock);
	rc = FUNC0(ndev, req, opt, timeout);
	FUNC2(&ndev->req_lock);

	return rc;
}