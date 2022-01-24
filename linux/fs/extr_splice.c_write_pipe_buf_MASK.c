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
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct splice_desc {int /*<<< orphan*/  len; TYPE_1__ u; int /*<<< orphan*/  pos; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
			  struct splice_desc *sd)
{
	int ret;
	void *data;
	loff_t tmp = sd->pos;

	data = FUNC1(buf->page);
	ret = FUNC0(sd->u.file, data + buf->offset, sd->len, &tmp);
	FUNC2(buf->page);

	return ret;
}