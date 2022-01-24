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
struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_ea; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC5(struct gfs2_inode *ip, struct gfs2_ea_location *el,
			    char *data, size_t size)
{
	int ret;
	size_t len = FUNC1(el->el_ea);
	if (len > size)
		return -ERANGE;

	if (FUNC2(el->el_ea)) {
		FUNC4(data, FUNC0(el->el_ea), len);
		return len;
	}
	ret = FUNC3(ip, el->el_ea, NULL, data);
	if (ret < 0)
		return ret;
	return len;
}