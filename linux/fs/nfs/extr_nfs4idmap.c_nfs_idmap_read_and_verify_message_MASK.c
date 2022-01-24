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
struct key {int dummy; } ;
struct idmap_msg {scalar_t__ im_type; int im_conv; char* im_name; int /*<<< orphan*/  im_id; } ;
typedef  int /*<<< orphan*/  id_str ;

/* Variables and functions */
 int EINVAL ; 
 int ENOKEY ; 
#define  IDMAP_CONV_IDTONAME 129 
#define  IDMAP_CONV_NAMETOID 128 
 int NFS_UINT_MAXLEN ; 
 int FUNC0 (struct key*,struct key*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct idmap_msg *im,
		struct idmap_msg *upcall,
		struct key *key, struct key *authkey)
{
	char id_str[NFS_UINT_MAXLEN];
	size_t len;
	int ret = -ENOKEY;

	/* ret = -ENOKEY */
	if (upcall->im_type != im->im_type || upcall->im_conv != im->im_conv)
		goto out;
	switch (im->im_conv) {
	case IDMAP_CONV_NAMETOID:
		if (FUNC2(upcall->im_name, im->im_name) != 0)
			break;
		/* Note: here we store the NUL terminator too */
		len = 1 + FUNC1(im->im_id, id_str,
						    sizeof(id_str));
		ret = FUNC0(key, authkey, id_str, len);
		break;
	case IDMAP_CONV_IDTONAME:
		if (upcall->im_id != im->im_id)
			break;
		len = FUNC3(im->im_name);
		ret = FUNC0(key, authkey, im->im_name, len);
		break;
	default:
		ret = -EINVAL;
	}
out:
	return ret;
}