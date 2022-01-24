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
struct idmap {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int NFS_UINT_MAXLEN ; 
 int FUNC0 (char*,int,long*) ; 
 scalar_t__ FUNC1 (char const*,size_t,char const*,char*,int,struct idmap*) ; 

__attribute__((used)) static int FUNC2(const char *name, size_t namelen, const char *type,
			       __u32 *id, struct idmap *idmap)
{
	char id_str[NFS_UINT_MAXLEN];
	long id_long;
	ssize_t data_size;
	int ret = 0;

	data_size = FUNC1(name, namelen, type, id_str, NFS_UINT_MAXLEN, idmap);
	if (data_size <= 0) {
		ret = -EINVAL;
	} else {
		ret = FUNC0(id_str, 10, &id_long);
		if (!ret)
			*id = (__u32)id_long;
	}
	return ret;
}