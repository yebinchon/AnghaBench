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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ip_set {int dsize; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * variant; } ;
struct bitmap_port {int elements; int /*<<< orphan*/  memsize; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IPSET_ATTR_CADT_FLAGS ; 
 size_t IPSET_ATTR_PORT ; 
 size_t IPSET_ATTR_PORT_TO ; 
 size_t IPSET_ATTR_TIMEOUT ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bitmap_port ; 
 int /*<<< orphan*/  bitmap_port_gc ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*,struct bitmap_port*,scalar_t__,scalar_t__) ; 
 struct bitmap_port* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr**,size_t) ; 
 int FUNC5 (struct ip_set*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap_port*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct net *net, struct ip_set *set, struct nlattr *tb[],
		   u32 flags)
{
	struct bitmap_port *map;
	u16 first_port, last_port;
	u32 elements;

	if (FUNC11(!FUNC4(tb, IPSET_ATTR_PORT) ||
		     !FUNC4(tb, IPSET_ATTR_PORT_TO) ||
		     !FUNC7(tb, IPSET_ATTR_TIMEOUT) ||
		     !FUNC7(tb, IPSET_ATTR_CADT_FLAGS)))
		return -IPSET_ERR_PROTOCOL;

	first_port = FUNC6(tb[IPSET_ATTR_PORT]);
	last_port = FUNC6(tb[IPSET_ATTR_PORT_TO]);
	if (first_port > last_port)
		FUNC10(first_port, last_port);

	elements = last_port - first_port + 1;
	set->dsize = FUNC5(set, tb, 0, 0);
	map = FUNC3(sizeof(*map) + elements * set->dsize);
	if (!map)
		return -ENOMEM;

	map->elements = elements;
	map->memsize = FUNC0(0, map->elements);
	set->variant = &bitmap_port;
	if (!FUNC2(set, map, first_port, last_port)) {
		FUNC9(map);
		return -ENOMEM;
	}
	if (tb[IPSET_ATTR_TIMEOUT]) {
		set->timeout = FUNC8(tb[IPSET_ATTR_TIMEOUT]);
		FUNC1(set, bitmap_port_gc);
	}
	return 0;
}