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
struct xdr_stream {int dummy; } ;
struct nlm_cookie {int len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NLM_MAXCOOKIELEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr,
			 struct nlm_cookie *cookie)
{
	u32 length;
	__be32 *p;

	p = FUNC5(xdr, 4);
	if (FUNC4(p == NULL))
		goto out_overflow;
	length = FUNC0(p++);
	/* apparently HPUX can return empty cookies */
	if (length == 0)
		goto out_hpux;
	if (length > NLM_MAXCOOKIELEN)
		goto out_size;
	p = FUNC5(xdr, length);
	if (FUNC4(p == NULL))
		goto out_overflow;
	cookie->len = length;
	FUNC2(cookie->data, p, length);
	return 0;
out_hpux:
	cookie->len = 4;
	FUNC3(cookie->data, 0, 4);
	return 0;
out_size:
	FUNC1("NFS: returned cookie was too long: %u\n", length);
	return -EIO;
out_overflow:
	return -EIO;
}