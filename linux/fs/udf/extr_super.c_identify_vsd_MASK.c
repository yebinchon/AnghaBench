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
struct volStructDesc {int structType; int /*<<< orphan*/  stdIdent; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSD_STD_ID_BEA01 ; 
 int /*<<< orphan*/  VSD_STD_ID_BOOT2 ; 
 int /*<<< orphan*/  VSD_STD_ID_CD001 ; 
 int /*<<< orphan*/  VSD_STD_ID_CDW02 ; 
 int /*<<< orphan*/  VSD_STD_ID_LEN ; 
 int /*<<< orphan*/  VSD_STD_ID_NSR02 ; 
 int /*<<< orphan*/  VSD_STD_ID_NSR03 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(const struct volStructDesc *vsd)
{
	int ret = 0;

	if (!FUNC0(vsd->stdIdent, VSD_STD_ID_CD001, VSD_STD_ID_LEN)) {
		switch (vsd->structType) {
		case 0:
			FUNC1("ISO9660 Boot Record found\n");
			break;
		case 1:
			FUNC1("ISO9660 Primary Volume Descriptor found\n");
			break;
		case 2:
			FUNC1("ISO9660 Supplementary Volume Descriptor found\n");
			break;
		case 3:
			FUNC1("ISO9660 Volume Partition Descriptor found\n");
			break;
		case 255:
			FUNC1("ISO9660 Volume Descriptor Set Terminator found\n");
			break;
		default:
			FUNC1("ISO9660 VRS (%u) found\n", vsd->structType);
			break;
		}
	} else if (!FUNC0(vsd->stdIdent, VSD_STD_ID_BEA01, VSD_STD_ID_LEN))
		; /* ret = 0 */
	else if (!FUNC0(vsd->stdIdent, VSD_STD_ID_NSR02, VSD_STD_ID_LEN))
		ret = 1;
	else if (!FUNC0(vsd->stdIdent, VSD_STD_ID_NSR03, VSD_STD_ID_LEN))
		ret = 1;
	else if (!FUNC0(vsd->stdIdent, VSD_STD_ID_BOOT2, VSD_STD_ID_LEN))
		; /* ret = 0 */
	else if (!FUNC0(vsd->stdIdent, VSD_STD_ID_CDW02, VSD_STD_ID_LEN))
		; /* ret = 0 */
	else {
		/* TEA01 or invalid id : end of volume recognition area */
		ret = -1;
	}

	return ret;
}