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
struct nci_dev {int req_status; int req_result; int /*<<< orphan*/  req_completion; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 long ETIMEDOUT ; 
#define  NCI_REQ_CANCELED 129 
#define  NCI_REQ_DONE 128 
 int NCI_REQ_PEND ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nci_dev *ndev,
			 void (*req)(struct nci_dev *ndev, unsigned long opt),
			 unsigned long opt, __u32 timeout)
{
	int rc = 0;
	long completion_rc;

	ndev->req_status = NCI_REQ_PEND;

	FUNC3(&ndev->req_completion);
	req(ndev, opt);
	completion_rc =
		FUNC4(&ndev->req_completion,
							  timeout);

	FUNC1("wait_for_completion return %ld\n", completion_rc);

	if (completion_rc > 0) {
		switch (ndev->req_status) {
		case NCI_REQ_DONE:
			rc = FUNC0(ndev->req_result);
			break;

		case NCI_REQ_CANCELED:
			rc = -ndev->req_result;
			break;

		default:
			rc = -ETIMEDOUT;
			break;
		}
	} else {
		FUNC2("wait_for_completion_interruptible_timeout failed %ld\n",
		       completion_rc);

		rc = ((completion_rc == 0) ? (-ETIMEDOUT) : (completion_rc));
	}

	ndev->req_status = ndev->req_result = 0;

	return rc;
}