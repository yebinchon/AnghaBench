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
struct orangefs_object_kref {char fs_id; int /*<<< orphan*/  khandle; } ;
struct inode {int dummy; } ;
typedef  char __u32 ;
struct TYPE_2__ {struct orangefs_object_kref refn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_SUPER_DEBUG ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
		    __u32 *fh,
		    int *max_len,
		    struct inode *parent)
{
	int len = parent ? 10 : 5;
	int type = 1;
	struct orangefs_object_kref refn;

	if (*max_len < len) {
		FUNC3("fh buffer is too small for encoding\n");
		*max_len = len;
		type = 255;
		goto out;
	}

	refn = FUNC0(inode)->refn;
	FUNC1(&refn.khandle, fh, 16);
	fh[4] = refn.fs_id;

	FUNC2(GOSSIP_SUPER_DEBUG,
		     "Encoding fh: handle %pU, fsid %u\n",
		     &refn.khandle,
		     refn.fs_id);


	if (parent) {
		refn = FUNC0(parent)->refn;
		FUNC1(&refn.khandle, (char *) fh + 20, 16);
		fh[9] = refn.fs_id;

		type = 2;
		FUNC2(GOSSIP_SUPER_DEBUG,
			     "Encoding parent: handle %pU, fsid %u\n",
			     &refn.khandle,
			     refn.fs_id);
	}
	*max_len = len;

out:
	return type;
}