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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nfc_se {int /*<<< orphan*/  list; int /*<<< orphan*/  state; int /*<<< orphan*/  type; int /*<<< orphan*/  idx; } ;
struct nfc_dev {int /*<<< orphan*/  secure_elements; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFC_SE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_se*) ; 
 struct nfc_se* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nfc_se* FUNC6 (struct nfc_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct nfc_dev *dev, u32 se_idx, u16 type)
{
	struct nfc_se *se;
	int rc;

	FUNC8("%s se index %d\n", FUNC1(&dev->dev), se_idx);

	se = FUNC6(dev, se_idx);
	if (se)
		return -EALREADY;

	se = FUNC3(sizeof(struct nfc_se), GFP_KERNEL);
	if (!se)
		return -ENOMEM;

	se->idx = se_idx;
	se->type = type;
	se->state = NFC_SE_DISABLED;
	FUNC0(&se->list);

	FUNC4(&se->list, &dev->secure_elements);

	rc = FUNC7(dev, se_idx, type);
	if (rc < 0) {
		FUNC5(&se->list);
		FUNC2(se);

		return rc;
	}

	return 0;
}