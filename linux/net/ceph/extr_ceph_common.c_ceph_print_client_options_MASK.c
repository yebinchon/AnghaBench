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
struct seq_file {size_t count; } ;
struct ceph_options {int flags; scalar_t__ mount_timeout; scalar_t__ osd_idle_ttl; scalar_t__ osd_keepalive_timeout; scalar_t__ osd_request_timeout; int /*<<< orphan*/  fsid; scalar_t__ key; scalar_t__ name; } ;
struct ceph_client {struct ceph_options* options; } ;

/* Variables and functions */
 scalar_t__ CEPH_MOUNT_TIMEOUT_DEFAULT ; 
 int CEPH_OPT_ABORT_ON_FULL ; 
 int CEPH_OPT_FSID ; 
 int CEPH_OPT_NOCRC ; 
 int CEPH_OPT_NOMSGAUTH ; 
 int CEPH_OPT_NOMSGSIGN ; 
 int CEPH_OPT_NOSHARE ; 
 int CEPH_OPT_TCP_NODELAY ; 
 scalar_t__ CEPH_OSD_IDLE_TTL_DEFAULT ; 
 scalar_t__ CEPH_OSD_KEEPALIVE_DEFAULT ; 
 scalar_t__ CEPH_OSD_REQUEST_TIMEOUT_DEFAULT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

int FUNC5(struct seq_file *m, struct ceph_client *client,
			      bool show_all)
{
	struct ceph_options *opt = client->options;
	size_t pos = m->count;

	if (opt->name) {
		FUNC4(m, "name=");
		FUNC1(m, opt->name, ", \t\n\\");
		FUNC3(m, ',');
	}
	if (opt->key)
		FUNC4(m, "secret=<hidden>,");

	if (opt->flags & CEPH_OPT_FSID)
		FUNC2(m, "fsid=%pU,", opt->fsid);
	if (opt->flags & CEPH_OPT_NOSHARE)
		FUNC4(m, "noshare,");
	if (opt->flags & CEPH_OPT_NOCRC)
		FUNC4(m, "nocrc,");
	if (opt->flags & CEPH_OPT_NOMSGAUTH)
		FUNC4(m, "nocephx_require_signatures,");
	if (opt->flags & CEPH_OPT_NOMSGSIGN)
		FUNC4(m, "nocephx_sign_messages,");
	if ((opt->flags & CEPH_OPT_TCP_NODELAY) == 0)
		FUNC4(m, "notcp_nodelay,");
	if (show_all && (opt->flags & CEPH_OPT_ABORT_ON_FULL))
		FUNC4(m, "abort_on_full,");

	if (opt->mount_timeout != CEPH_MOUNT_TIMEOUT_DEFAULT)
		FUNC2(m, "mount_timeout=%d,",
			   FUNC0(opt->mount_timeout) / 1000);
	if (opt->osd_idle_ttl != CEPH_OSD_IDLE_TTL_DEFAULT)
		FUNC2(m, "osd_idle_ttl=%d,",
			   FUNC0(opt->osd_idle_ttl) / 1000);
	if (opt->osd_keepalive_timeout != CEPH_OSD_KEEPALIVE_DEFAULT)
		FUNC2(m, "osdkeepalivetimeout=%d,",
		    FUNC0(opt->osd_keepalive_timeout) / 1000);
	if (opt->osd_request_timeout != CEPH_OSD_REQUEST_TIMEOUT_DEFAULT)
		FUNC2(m, "osd_request_timeout=%d,",
			   FUNC0(opt->osd_request_timeout) / 1000);

	/* drop redundant comma */
	if (m->count != pos)
		m->count--;

	return 0;
}