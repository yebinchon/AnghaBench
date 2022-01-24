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
struct rchan_buf {unsigned int cpu; } ;
struct rchan {int /*<<< orphan*/  buf; int /*<<< orphan*/  is_global; TYPE_1__* cb; scalar_t__ has_base_filename; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* (* create_buf_file ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rchan_buf*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  FUNC1 (struct rchan_buf*,int) ; 
 struct rchan_buf** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rchan_buf* FUNC3 (struct rchan*) ; 
 struct dentry* FUNC4 (struct rchan*,struct rchan_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct rchan_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct rchan_buf*,struct dentry*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rchan_buf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rchan_buf *FUNC8(struct rchan *chan, unsigned int cpu)
{
 	struct rchan_buf *buf = NULL;
	struct dentry *dentry;

 	if (chan->is_global)
		return *FUNC2(chan->buf, 0);

	buf = FUNC3(chan);
	if (!buf)
		return NULL;

	if (chan->has_base_filename) {
		dentry = FUNC4(chan, buf, cpu);
		if (!dentry)
			goto free_buf;
		FUNC6(buf, dentry);
	} else {
		/* Only retrieve global info, nothing more, nothing less */
		dentry = chan->cb->create_buf_file(NULL, NULL,
						   S_IRUSR, buf,
						   &chan->is_global);
		if (FUNC0(dentry))
			goto free_buf;
	}

 	buf->cpu = cpu;
 	FUNC1(buf, 1);

 	if(chan->is_global) {
		*FUNC2(chan->buf, 0) = buf;
 		buf->cpu = 0;
  	}

	return buf;

free_buf:
 	FUNC5(buf);
	return NULL;
}