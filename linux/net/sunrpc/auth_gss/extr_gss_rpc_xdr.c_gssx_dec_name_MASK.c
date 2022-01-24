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
struct xdr_netobj {int /*<<< orphan*/  len; } ;
struct gssx_option_array {int /*<<< orphan*/  count; } ;
struct gssx_name_attr_array {int /*<<< orphan*/  count; } ;
struct gssx_name {struct xdr_netobj display_name; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct gssx_name_attr_array*) ; 
 int FUNC1 (struct xdr_stream*,struct gssx_option_array*) ; 
 int FUNC2 (struct xdr_stream*,struct xdr_netobj*) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
			 struct gssx_name *name)
{
	struct xdr_netobj dummy_netobj = { .len = 0 };
	struct gssx_name_attr_array dummy_name_attr_array = { .count = 0 };
	struct gssx_option_array dummy_option_array = { .count = 0 };
	int err;

	/* name->display_name */
	err = FUNC2(xdr, &name->display_name);
	if (err)
		return err;

	/* name->name_type */
	err = FUNC2(xdr, &dummy_netobj);
	if (err)
		return err;

	/* name->exported_name */
	err = FUNC2(xdr, &dummy_netobj);
	if (err)
		return err;

	/* name->exported_composite_name */
	err = FUNC2(xdr, &dummy_netobj);
	if (err)
		return err;

	/* we assume we have no attributes for now, so simply consume them */
	/* name->name_attributes */
	err = FUNC0(xdr, &dummy_name_attr_array);
	if (err)
		return err;

	/* we assume we have no options for now, so simply consume them */
	/* name->extensions */
	err = FUNC1(xdr, &dummy_option_array);

	return err;
}