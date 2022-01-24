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
struct user_namespace {int dummy; } ;
struct fuse_iqueue_ops {int dummy; } ;
struct fuse_conn {int connected; int /*<<< orphan*/  max_pages; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  pid_ns; int /*<<< orphan*/  scramble_key; int /*<<< orphan*/  attr_version; scalar_t__ initialized; scalar_t__ blocked; int /*<<< orphan*/  polled_files; int /*<<< orphan*/  khctr; int /*<<< orphan*/  congestion_threshold; int /*<<< orphan*/  max_background; int /*<<< orphan*/  num_waiting; int /*<<< orphan*/  devices; int /*<<< orphan*/  entry; int /*<<< orphan*/  bg_queue; int /*<<< orphan*/  iq; int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  dev_count; int /*<<< orphan*/  count; int /*<<< orphan*/  killsb; int /*<<< orphan*/  bg_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DEFAULT_CONGESTION_THRESHOLD ; 
 int /*<<< orphan*/  FUSE_DEFAULT_MAX_BACKGROUND ; 
 int /*<<< orphan*/  FUSE_DEFAULT_MAX_PAGES_PER_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fuse_iqueue_ops const*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct fuse_conn *fc, struct user_namespace *user_ns,
		    const struct fuse_iqueue_ops *fiq_ops, void *fiq_priv)
{
	FUNC9(fc, 0, sizeof(*fc));
	FUNC11(&fc->lock);
	FUNC11(&fc->bg_lock);
	FUNC7(&fc->killsb);
	FUNC10(&fc->count, 1);
	FUNC2(&fc->dev_count, 1);
	FUNC8(&fc->blocked_waitq);
	FUNC3(&fc->iq, fiq_ops, fiq_priv);
	FUNC0(&fc->bg_queue);
	FUNC0(&fc->entry);
	FUNC0(&fc->devices);
	FUNC2(&fc->num_waiting, 0);
	fc->max_background = FUSE_DEFAULT_MAX_BACKGROUND;
	fc->congestion_threshold = FUSE_DEFAULT_CONGESTION_THRESHOLD;
	FUNC1(&fc->khctr, 0);
	fc->polled_files = RB_ROOT;
	fc->blocked = 0;
	fc->initialized = 0;
	fc->connected = 1;
	FUNC1(&fc->attr_version, 1);
	FUNC5(&fc->scramble_key, sizeof(fc->scramble_key));
	fc->pid_ns = FUNC4(FUNC12(current));
	fc->user_ns = FUNC6(user_ns);
	fc->max_pages = FUSE_DEFAULT_MAX_PAGES_PER_REQ;
}