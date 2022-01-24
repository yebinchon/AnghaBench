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
typedef  scalar_t__ u32 ;
struct socket {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct aa_label*,struct aa_label*) ; 
 int FUNC2 (struct aa_label*,char const*,scalar_t__,struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct aa_label*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(const char *op, struct aa_label *label,
			    struct aa_label *flabel, struct file *file,
			    u32 request, u32 denied)
{
	struct socket *sock = (struct socket *) file->private_data;
	int error;

	FUNC0(!sock);

	/* revalidation due to label out of date. No revocation at this time */
	if (!denied && FUNC1(flabel, label))
		return 0;

	/* TODO: improve to skip profiles cached in flabel */
	error = FUNC2(label, op, request, sock);
	if (denied) {
		/* TODO: improve to skip profiles checked above */
		/* check every profile in file label to is cached */
		FUNC4(error, FUNC2(flabel, op, request, sock));
	}
	if (!error)
		FUNC5(FUNC3(file), label, request);

	return error;
}