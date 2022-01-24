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
typedef  int /*<<< orphan*/  utf8leaf_t ;
struct unicode_data {scalar_t__ correction; int gen; int code; scalar_t__* utf8nfdi; char* utf8nfdicf; scalar_t__ ccc; } ;
struct tree {char* type; int maxage; } ;

/* Variables and functions */
 scalar_t__ DECOMPOSE ; 
 scalar_t__ HANGUL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int UTF8HANGULLEAF ; 
 struct unicode_data* FUNC4 (struct unicode_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char*,char*) ; 
 struct unicode_data* unicode_data ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (struct tree*,unsigned char*,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC9(struct tree *tree)
{
	struct unicode_data *data;
	utf8leaf_t	*leaf;
	unsigned int	unichar;
	char		key[4];
	unsigned char	hangul[UTF8HANGULLEAF];
	int		report;
	int		nocf;

	if (verbose > 0)
		FUNC5("Verifying %s_%x\n", tree->type, tree->maxage);
	nocf = FUNC6(tree->type, "nfdicf");

	for (unichar = 0; unichar != 0x110000; unichar++) {
		report = 0;
		data = FUNC4(&unicode_data[unichar]);
		if (data->correction <= tree->maxage)
			data = &unicode_data[unichar];
		FUNC7(key,unichar);
		leaf = FUNC8(tree, hangul, key);

		if (!leaf) {
			if (data->gen != -1)
				report++;
			if (unichar < 0xd800 || unichar > 0xdfff)
				report++;
		} else {
			if (unichar >= 0xd800 && unichar <= 0xdfff)
				report++;
			if (data->gen == -1)
				report++;
			if (data->gen != FUNC2(leaf))
				report++;
			if (FUNC1(leaf) == DECOMPOSE) {
				if (FUNC0(data->code)) {
					if (data->utf8nfdi[0] != HANGUL)
						report++;
				} else if (nocf) {
					if (!data->utf8nfdi) {
						report++;
					} else if (FUNC6(data->utf8nfdi,
							  FUNC3(leaf))) {
						report++;
					}
				} else {
					if (!data->utf8nfdicf &&
					    !data->utf8nfdi) {
						report++;
					} else if (data->utf8nfdicf) {
						if (FUNC6(data->utf8nfdicf,
							   FUNC3(leaf)))
							report++;
					} else if (FUNC6(data->utf8nfdi,
							  FUNC3(leaf))) {
						report++;
					}
				}
			} else if (data->ccc != FUNC1(leaf)) {
				report++;
			}
		}
		if (report) {
			FUNC5("%X code %X gen %d ccc %d"
				" nfdi -> \"%s\"",
				unichar, data->code, data->gen,
				data->ccc,
				data->utf8nfdi);
			if (leaf) {
				FUNC5(" gen %d ccc %d"
					" nfdi -> \"%s\"",
					FUNC2(leaf),
					FUNC1(leaf),
					FUNC1(leaf) == DECOMPOSE ?
						FUNC3(leaf) : "");
			}
			FUNC5("\n");
		}
	}
}