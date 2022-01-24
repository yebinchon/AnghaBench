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
struct TYPE_2__ {char* name; int len; } ;
struct ovl_lookup_data {int stop; char* redirect; TYPE_1__ name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (struct dentry*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct ovl_lookup_data *d,
			      size_t prelen, const char *post)
{
	int res;
	char *buf;

	buf = FUNC5(dentry, prelen + FUNC7(post));
	if (FUNC0(buf))
		return FUNC1(buf);

	if (buf[0] == '/') {
		/*
		 * One of the ancestor path elements in an absolute path
		 * lookup in ovl_lookup_layer() could have been opaque and
		 * that will stop further lookup in lower layers (d->stop=true)
		 * But we have found an absolute redirect in decendant path
		 * element and that should force continue lookup in lower
		 * layers (reset d->stop).
		 */
		d->stop = false;
	} else {
		res = FUNC7(buf) + 1;
		FUNC4(buf + prelen, buf, res);
		FUNC3(buf, d->name.name, prelen);
	}

	FUNC6(buf, post);
	FUNC2(d->redirect);
	d->redirect = buf;
	d->name.name = d->redirect;
	d->name.len = FUNC7(d->redirect);

	return 0;
}