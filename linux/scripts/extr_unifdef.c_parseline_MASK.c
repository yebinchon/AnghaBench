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
typedef  scalar_t__ Linetype ;
typedef  int Comment_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t LS_DIRTY ; 
 size_t LS_HASH ; 
 size_t LS_START ; 
 scalar_t__ LT_DODGY ; 
 scalar_t__ LT_ELFALSE ; 
 scalar_t__ LT_ELIF ; 
 scalar_t__ LT_ELSE ; 
 scalar_t__ LT_ELTRUE ; 
 scalar_t__ LT_ENDIF ; 
 scalar_t__ LT_EOF ; 
 scalar_t__ LT_FALSE ; 
 scalar_t__ LT_FALSEI ; 
 scalar_t__ LT_IF ; 
 scalar_t__ LT_PLAIN ; 
 scalar_t__ LT_TRUE ; 
 scalar_t__ LT_TRUEI ; 
 scalar_t__ MAXLINE ; 
 int /*<<< orphan*/ * comment_name ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int firstsym ; 
 scalar_t__ FUNC4 (char const**) ; 
 scalar_t__* ignore ; 
 int incomment ; 
 int /*<<< orphan*/  input ; 
 char const* keyword ; 
 int /*<<< orphan*/  linenum ; 
 size_t linestate ; 
 int /*<<< orphan*/ * linestate_name ; 
 int /*<<< orphan*/ * newline ; 
 int /*<<< orphan*/ * newline_crlf ; 
 int /*<<< orphan*/ * newline_unix ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 scalar_t__ FUNC11 (char const*,char) ; 
 char const* tline ; 
 int /*<<< orphan*/ ** value ; 

__attribute__((used)) static Linetype
FUNC12(void)
{
	const char *cp;
	int cursym;
	int kwlen;
	Linetype retval;
	Comment_state wascomment;

	linenum++;
	if (FUNC2(tline, MAXLINE, input) == NULL)
		return (LT_EOF);
	if (newline == NULL) {
		if (FUNC11(tline, '\n') == FUNC11(tline, '\r') + 1)
			newline = newline_crlf;
		else
			newline = newline_unix;
	}
	retval = LT_PLAIN;
	wascomment = incomment;
	cp = FUNC5(tline);
	if (linestate == LS_START) {
		if (*cp == '#') {
			linestate = LS_HASH;
			firstsym = true;
			cp = FUNC5(cp + 1);
		} else if (*cp != '\0')
			linestate = LS_DIRTY;
	}
	if (!incomment && linestate == LS_HASH) {
		keyword = tline + (cp - tline);
		cp = FUNC6(cp);
		kwlen = cp - keyword;
		/* no way can we deal with a continuation inside a keyword */
		if (FUNC10(cp, "\\\r\n", 3) == 0 ||
		    FUNC10(cp, "\\\n", 2) == 0)
			FUNC0();
		if (FUNC8("ifdef", keyword, kwlen) == 0 ||
		    FUNC8("ifndef", keyword, kwlen) == 0) {
			cp = FUNC5(cp);
			if ((cursym = FUNC3(cp)) < 0)
				retval = LT_IF;
			else {
				retval = (keyword[2] == 'n')
				    ? LT_FALSE : LT_TRUE;
				if (value[cursym] == NULL)
					retval = (retval == LT_TRUE)
					    ? LT_FALSE : LT_TRUE;
				if (ignore[cursym])
					retval = (retval == LT_TRUE)
					    ? LT_TRUEI : LT_FALSEI;
			}
			cp = FUNC6(cp);
		} else if (FUNC8("if", keyword, kwlen) == 0)
			retval = FUNC4(&cp);
		else if (FUNC8("elif", keyword, kwlen) == 0)
			retval = FUNC4(&cp) - LT_IF + LT_ELIF;
		else if (FUNC8("else", keyword, kwlen) == 0)
			retval = LT_ELSE;
		else if (FUNC8("endif", keyword, kwlen) == 0)
			retval = LT_ENDIF;
		else {
			linestate = LS_DIRTY;
			retval = LT_PLAIN;
		}
		cp = FUNC5(cp);
		if (*cp != '\0') {
			linestate = LS_DIRTY;
			if (retval == LT_TRUE || retval == LT_FALSE ||
			    retval == LT_TRUEI || retval == LT_FALSEI)
				retval = LT_IF;
			if (retval == LT_ELTRUE || retval == LT_ELFALSE)
				retval = LT_ELIF;
		}
		if (retval != LT_PLAIN && (wascomment || incomment)) {
			retval += LT_DODGY;
			if (incomment)
				linestate = LS_DIRTY;
		}
		/* skipcomment normally changes the state, except
		   if the last line of the file lacks a newline, or
		   if there is too much whitespace in a directive */
		if (linestate == LS_HASH) {
			size_t len = cp - tline;
			if (FUNC2(tline + len, MAXLINE - len, input) == NULL) {
				/* append the missing newline */
				FUNC7(tline + len, newline);
				cp += FUNC9(newline);
				linestate = LS_START;
			} else {
				linestate = LS_DIRTY;
			}
		}
	}
	if (linestate == LS_DIRTY) {
		while (*cp != '\0')
			cp = FUNC5(cp + 1);
	}
	FUNC1("parser line %d state %s comment %s line", linenum,
	    comment_name[incomment], linestate_name[linestate]);
	return (retval);
}