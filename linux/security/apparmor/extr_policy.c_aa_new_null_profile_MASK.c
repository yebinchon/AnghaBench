#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* hname; int /*<<< orphan*/  profiles; } ;
struct TYPE_9__ {void* dfa; } ;
struct TYPE_8__ {void* dfa; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct aa_profile {TYPE_5__* ns; TYPE_4__ base; TYPE_3__ policy; TYPE_2__ file; int /*<<< orphan*/  parent; int /*<<< orphan*/  path_flags; TYPE_1__ label; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_11__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  level; int /*<<< orphan*/  uniq_null; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  APPARMOR_COMPLAIN ; 
 int /*<<< orphan*/  FLAG_HAT ; 
 int /*<<< orphan*/  FLAG_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct aa_profile*) ; 
 struct aa_profile* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct aa_profile* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct aa_profile* FUNC4 (struct aa_profile*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_profile*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_5__*) ; 
 struct aa_profile* FUNC8 (struct aa_profile*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nulldfa ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char const*,...) ; 
 scalar_t__ FUNC17 (char const*) ; 

struct aa_profile *FUNC18(struct aa_profile *parent, bool hat,
				       const char *base, gfp_t gfp)
{
	struct aa_profile *p, *profile;
	const char *bname;
	char *name = NULL;

	FUNC0(!parent);

	if (base) {
		name = FUNC12(FUNC17(parent->base.hname) + 8 + FUNC17(base),
			       gfp);
		if (name) {
			FUNC16(name, "%s//null-%s", parent->base.hname, base);
			goto name;
		}
		/* fall through to try shorter uniq */
	}

	name = FUNC12(FUNC17(parent->base.hname) + 2 + 7 + 8, gfp);
	if (!name)
		return NULL;
	FUNC16(name, "%s//null-%x", parent->base.hname,
		FUNC9(&parent->ns->uniq_null));

name:
	/* lookup to see if this is a dup creation */
	bname = FUNC10(name);
	profile = FUNC4(parent, bname);
	if (profile)
		goto out;

	profile = FUNC3(name, NULL, gfp);
	if (!profile)
		goto fail;

	profile->mode = APPARMOR_COMPLAIN;
	profile->label.flags |= FLAG_NULL;
	if (hat)
		profile->label.flags |= FLAG_HAT;
	profile->path_flags = parent->path_flags;

	/* released on free_profile */
	FUNC15(profile->parent, FUNC8(parent));
	profile->ns = FUNC7(parent->ns);
	profile->file.dfa = FUNC6(nulldfa);
	profile->policy.dfa = FUNC6(nulldfa);

	FUNC13(&profile->ns->lock, profile->ns->level);
	p = FUNC2(&parent->base.profiles, bname);
	if (p) {
		FUNC5(profile);
		profile = FUNC8(p);
	} else {
		FUNC1(&parent->base.profiles, profile);
	}
	FUNC14(&profile->ns->lock);

	/* refcount released by caller */
out:
	FUNC11(name);

	return profile;

fail:
	FUNC11(name);
	FUNC5(profile);
	return NULL;
}