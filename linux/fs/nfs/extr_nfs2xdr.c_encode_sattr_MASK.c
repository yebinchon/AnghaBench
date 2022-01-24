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
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct timespec {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_mtime; int /*<<< orphan*/  ia_atime; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_ATIME_SET ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_MTIME_SET ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  NFS2_SATTR_NOT_SET ; 
 int NFS_sattr_sz ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct timespec FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct xdr_stream *xdr, const struct iattr *attr,
		struct user_namespace *userns)
{
	struct timespec ts;
	__be32 *p;

	p = FUNC6(xdr, NFS_sattr_sz << 2);

	if (attr->ia_valid & ATTR_MODE)
		*p++ = FUNC0(attr->ia_mode);
	else
		*p++ = FUNC0(NFS2_SATTR_NOT_SET);
	if (attr->ia_valid & ATTR_UID)
		*p++ = FUNC0(FUNC2(userns, attr->ia_uid));
	else
		*p++ = FUNC0(NFS2_SATTR_NOT_SET);
	if (attr->ia_valid & ATTR_GID)
		*p++ = FUNC0(FUNC1(userns, attr->ia_gid));
	else
		*p++ = FUNC0(NFS2_SATTR_NOT_SET);
	if (attr->ia_valid & ATTR_SIZE)
		*p++ = FUNC0((u32)attr->ia_size);
	else
		*p++ = FUNC0(NFS2_SATTR_NOT_SET);

	if (attr->ia_valid & ATTR_ATIME_SET) {
		ts = FUNC3(attr->ia_atime);
		p = FUNC5(p, &ts);
	} else if (attr->ia_valid & ATTR_ATIME) {
		ts = FUNC3(attr->ia_atime);
		p = FUNC4(p, &ts);
	} else
		p = FUNC7(p);
	if (attr->ia_valid & ATTR_MTIME_SET) {
		ts = FUNC3(attr->ia_atime);
		FUNC5(p, &ts);
	} else if (attr->ia_valid & ATTR_MTIME) {
		ts = FUNC3(attr->ia_mtime);
		FUNC4(p, &ts);
	} else
		FUNC7(p);
}