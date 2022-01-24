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
struct filename_trans_datum {int otype; } ;
struct filename_trans {int stype; int ttype; int tclass; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *key, void *data, void *ptr)
{
	__le32 buf[4];
	struct filename_trans *ft = key;
	struct filename_trans_datum *otype = data;
	void *fp = ptr;
	int rc;
	u32 len;

	len = FUNC2(ft->name);
	buf[0] = FUNC0(len);
	rc = FUNC1(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;

	rc = FUNC1(ft->name, sizeof(char), len, fp);
	if (rc)
		return rc;

	buf[0] = FUNC0(ft->stype);
	buf[1] = FUNC0(ft->ttype);
	buf[2] = FUNC0(ft->tclass);
	buf[3] = FUNC0(otype->otype);

	rc = FUNC1(buf, sizeof(u32), 4, fp);
	if (rc)
		return rc;

	return 0;
}