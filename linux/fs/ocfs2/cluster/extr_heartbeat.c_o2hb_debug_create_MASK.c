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
struct o2hb_debug_buf {int db_type; int db_size; int db_len; void* db_data; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct dentry*,struct o2hb_debug_buf*,int /*<<< orphan*/ *) ; 
 struct o2hb_debug_buf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2hb_debug_fops ; 

__attribute__((used)) static void FUNC2(const char *name, struct dentry *dir,
			      struct o2hb_debug_buf **db, int db_len, int type,
			      int size, int len, void *data)
{
	*db = FUNC1(db_len, GFP_KERNEL);
	if (!*db)
		return;

	(*db)->db_type = type;
	(*db)->db_size = size;
	(*db)->db_len = len;
	(*db)->db_data = data;

	FUNC0(name, S_IFREG|S_IRUSR, dir, *db, &o2hb_debug_fops);
}