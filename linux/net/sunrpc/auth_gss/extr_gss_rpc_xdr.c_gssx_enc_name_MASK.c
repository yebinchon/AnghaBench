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
struct gssx_name {int /*<<< orphan*/  display_name; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zero_name_attr_array ; 
 int /*<<< orphan*/  zero_netobj ; 
 int /*<<< orphan*/  zero_option_array ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
			 struct gssx_name *name)
{
	int err;

	/* name->display_name */
	err = FUNC2(xdr, &name->display_name);
	if (err)
		return err;

	/* name->name_type */
	err = FUNC2(xdr, &zero_netobj);
	if (err)
		return err;

	/* name->exported_name */
	err = FUNC2(xdr, &zero_netobj);
	if (err)
		return err;

	/* name->exported_composite_name */
	err = FUNC2(xdr, &zero_netobj);
	if (err)
		return err;

	/* leave name_attributes empty for now, will add once we have any
	 * to pass up at all */
	/* name->name_attributes */
	err = FUNC0(xdr, &zero_name_attr_array);
	if (err)
		return err;

	/* leave options empty for now, will add once we have any options
	 * to pass up at all */
	/* name->extensions */
	err = FUNC1(xdr, &zero_option_array);

	return err;
}