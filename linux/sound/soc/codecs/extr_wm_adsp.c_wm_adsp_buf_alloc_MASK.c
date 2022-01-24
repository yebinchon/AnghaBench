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
struct wm_adsp_buf {int /*<<< orphan*/  list; int /*<<< orphan*/  buf; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wm_adsp_buf*) ; 
 struct wm_adsp_buf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

__attribute__((used)) static struct wm_adsp_buf *FUNC5(const void *src, size_t len,
					     struct list_head *list)
{
	struct wm_adsp_buf *buf = FUNC1(sizeof(*buf), GFP_KERNEL);

	if (buf == NULL)
		return NULL;

	buf->buf = FUNC4(len);
	if (!buf->buf) {
		FUNC0(buf);
		return NULL;
	}
	FUNC3(buf->buf, src, len);

	if (list)
		FUNC2(&buf->list, list);

	return buf;
}