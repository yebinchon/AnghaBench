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
struct xdr_stream {int dummy; } ;
struct gssx_name_attr {int /*<<< orphan*/  extensions; int /*<<< orphan*/  value; int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr,
			     struct gssx_name_attr *attr)
{
	int err;

	/* attr->attr */
	err = FUNC1(xdr, &attr->attr);
	if (err)
		return err;

	/* attr->value */
	err = FUNC1(xdr, &attr->value);
	if (err)
		return err;

	/* attr->extensions */
	err = FUNC0(xdr, &attr->extensions);

	return err;
}