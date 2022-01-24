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
typedef  int u64 ;
struct nfs4_readdir_arg {int cookie; char verifier; int pgbase; int count; int /*<<< orphan*/ * pages; } ;
struct dentry {struct dentry* d_parent; } ;
typedef  char __be32 ;

/* Variables and functions */
 unsigned int FATTR4_WORD0_FILEID ; 
 unsigned int FATTR4_WORD0_TYPE ; 
 int NF4DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 void* xdr_one ; 
 void* xdr_two ; 
 void* xdr_zero ; 

__attribute__((used)) static void FUNC8(u64 cookie, __be32 *verifier, struct dentry *dentry,
		struct nfs4_readdir_arg *readdir)
{
	unsigned int attrs = FATTR4_WORD0_FILEID | FATTR4_WORD0_TYPE;
	__be32 *start, *p;

	if (cookie > 2) {
		readdir->cookie = cookie;
		FUNC5(&readdir->verifier, verifier, sizeof(readdir->verifier));
		return;
	}

	readdir->cookie = 0;
	FUNC6(&readdir->verifier, 0, sizeof(readdir->verifier));
	if (cookie == 2)
		return;
	
	/*
	 * NFSv4 servers do not return entries for '.' and '..'
	 * Therefore, we fake these entries here.  We let '.'
	 * have cookie 0 and '..' have cookie 1.  Note that
	 * when talking to the server, we always send cookie 0
	 * instead of 1 or 2.
	 */
	start = p = FUNC3(*readdir->pages);
	
	if (cookie == 0) {
		*p++ = xdr_one;                                  /* next */
		*p++ = xdr_zero;                   /* cookie, first word */
		*p++ = xdr_one;                   /* cookie, second word */
		*p++ = xdr_one;                             /* entry len */
		FUNC5(p, ".\0\0\0", 4);                        /* entry */
		p++;
		*p++ = xdr_one;                         /* bitmap length */
		*p++ = FUNC2(attrs);                           /* bitmap */
		*p++ = FUNC2(12);             /* attribute buffer length */
		*p++ = FUNC2(NF4DIR);
		p = FUNC7(p, FUNC0(FUNC1(dentry)));
	}
	
	*p++ = xdr_one;                                  /* next */
	*p++ = xdr_zero;                   /* cookie, first word */
	*p++ = xdr_two;                   /* cookie, second word */
	*p++ = xdr_two;                             /* entry len */
	FUNC5(p, "..\0\0", 4);                         /* entry */
	p++;
	*p++ = xdr_one;                         /* bitmap length */
	*p++ = FUNC2(attrs);                           /* bitmap */
	*p++ = FUNC2(12);             /* attribute buffer length */
	*p++ = FUNC2(NF4DIR);
	p = FUNC7(p, FUNC0(FUNC1(dentry->d_parent)));

	readdir->pgbase = (char *)p - (char *)start;
	readdir->count -= readdir->pgbase;
	FUNC4(start);
}