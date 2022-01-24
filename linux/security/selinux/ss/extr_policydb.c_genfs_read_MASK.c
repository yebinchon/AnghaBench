#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct policydb {struct genfs* genfs; } ;
struct TYPE_4__ {struct genfs* name; } ;
struct TYPE_3__ {scalar_t__ sclass; } ;
struct ocontext {struct ocontext* next; TYPE_2__ u; TYPE_1__ v; int /*<<< orphan*/ * context; } ;
struct genfs {struct genfs* fstype; struct ocontext* head; struct genfs* next; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCON_FSUSE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct policydb*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct genfs*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocontext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct genfs*,...) ; 
 int FUNC7 (struct genfs**,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC8 (struct genfs*,struct genfs*) ; 
 int FUNC9 (struct genfs*) ; 

__attribute__((used)) static int FUNC10(struct policydb *p, void *fp)
{
	int i, j, rc;
	u32 nel, nel2, len, len2;
	__le32 buf[1];
	struct ocontext *l, *c;
	struct ocontext *newc = NULL;
	struct genfs *genfs_p, *genfs;
	struct genfs *newgenfs = NULL;

	rc = FUNC4(buf, fp, sizeof(u32));
	if (rc)
		return rc;
	nel = FUNC3(buf[0]);

	for (i = 0; i < nel; i++) {
		rc = FUNC4(buf, fp, sizeof(u32));
		if (rc)
			goto out;
		len = FUNC3(buf[0]);

		rc = -ENOMEM;
		newgenfs = FUNC2(sizeof(*newgenfs), GFP_KERNEL);
		if (!newgenfs)
			goto out;

		rc = FUNC7(&newgenfs->fstype, GFP_KERNEL, fp, len);
		if (rc)
			goto out;

		for (genfs_p = NULL, genfs = p->genfs; genfs;
		     genfs_p = genfs, genfs = genfs->next) {
			rc = -EINVAL;
			if (FUNC8(newgenfs->fstype, genfs->fstype) == 0) {
				FUNC6("SELinux:  dup genfs fstype %s\n",
				       newgenfs->fstype);
				goto out;
			}
			if (FUNC8(newgenfs->fstype, genfs->fstype) < 0)
				break;
		}
		newgenfs->next = genfs;
		if (genfs_p)
			genfs_p->next = newgenfs;
		else
			p->genfs = newgenfs;
		genfs = newgenfs;
		newgenfs = NULL;

		rc = FUNC4(buf, fp, sizeof(u32));
		if (rc)
			goto out;

		nel2 = FUNC3(buf[0]);
		for (j = 0; j < nel2; j++) {
			rc = FUNC4(buf, fp, sizeof(u32));
			if (rc)
				goto out;
			len = FUNC3(buf[0]);

			rc = -ENOMEM;
			newc = FUNC2(sizeof(*newc), GFP_KERNEL);
			if (!newc)
				goto out;

			rc = FUNC7(&newc->u.name, GFP_KERNEL, fp, len);
			if (rc)
				goto out;

			rc = FUNC4(buf, fp, sizeof(u32));
			if (rc)
				goto out;

			newc->v.sclass = FUNC3(buf[0]);
			rc = FUNC0(&newc->context[0], p, fp);
			if (rc)
				goto out;

			for (l = NULL, c = genfs->head; c;
			     l = c, c = c->next) {
				rc = -EINVAL;
				if (!FUNC8(newc->u.name, c->u.name) &&
				    (!c->v.sclass || !newc->v.sclass ||
				     newc->v.sclass == c->v.sclass)) {
					FUNC6("SELinux:  dup genfs entry (%s,%s)\n",
					       genfs->fstype, c->u.name);
					goto out;
				}
				len = FUNC9(newc->u.name);
				len2 = FUNC9(c->u.name);
				if (len > len2)
					break;
			}

			newc->next = c;
			if (l)
				l->next = newc;
			else
				genfs->head = newc;
			newc = NULL;
		}
	}
	rc = 0;
out:
	if (newgenfs) {
		FUNC1(newgenfs->fstype);
		FUNC1(newgenfs);
	}
	FUNC5(newc, OCON_FSUSE);

	return rc;
}