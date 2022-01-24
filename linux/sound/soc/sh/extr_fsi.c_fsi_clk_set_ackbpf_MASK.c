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
typedef  int u32 ;
struct fsi_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ACKMD_MASK ; 
 int BPFMD_MASK ; 
 int /*<<< orphan*/  CKG1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			      struct fsi_priv *fsi,
			      int ackmd, int bpfmd)
{
	u32 data = 0;

	/* check ackmd/bpfmd relationship */
	if (bpfmd > ackmd) {
		FUNC1(dev, "unsupported rate (%d/%d)\n", ackmd, bpfmd);
		return -EINVAL;
	}

	/*  ACKMD */
	switch (ackmd) {
	case 512:
		data |= (0x0 << 12);
		break;
	case 256:
		data |= (0x1 << 12);
		break;
	case 128:
		data |= (0x2 << 12);
		break;
	case 64:
		data |= (0x3 << 12);
		break;
	case 32:
		data |= (0x4 << 12);
		break;
	default:
		FUNC1(dev, "unsupported ackmd (%d)\n", ackmd);
		return -EINVAL;
	}

	/* BPFMD */
	switch (bpfmd) {
	case 32:
		data |= (0x0 << 8);
		break;
	case 64:
		data |= (0x1 << 8);
		break;
	case 128:
		data |= (0x2 << 8);
		break;
	case 256:
		data |= (0x3 << 8);
		break;
	case 512:
		data |= (0x4 << 8);
		break;
	case 16:
		data |= (0x7 << 8);
		break;
	default:
		FUNC1(dev, "unsupported bpfmd (%d)\n", bpfmd);
		return -EINVAL;
	}

	FUNC0(dev, "ACKMD/BPFMD = %d/%d\n", ackmd, bpfmd);

	FUNC2(fsi, CKG1, (ACKMD_MASK | BPFMD_MASK) , data);
	FUNC3(10);

	return 0;
}