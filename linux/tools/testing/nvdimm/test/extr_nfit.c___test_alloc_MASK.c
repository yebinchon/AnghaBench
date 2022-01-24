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
struct TYPE_4__ {char* name; void* end; void* start; } ;
struct nfit_test_resource {void* buf; int /*<<< orphan*/  list; int /*<<< orphan*/  requests; int /*<<< orphan*/  lock; TYPE_2__ res; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct nfit_test {int /*<<< orphan*/  resources; TYPE_1__ pdev; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 size_t DIMM_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,struct nfit_test_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct nfit_test_resource*) ; 
 struct nfit_test_resource* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  nfit_pool ; 
 int /*<<< orphan*/  nfit_test_lock ; 
 int /*<<< orphan*/  release_nfit_res ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static void *FUNC11(struct nfit_test *t, size_t size, dma_addr_t *dma,
		void *buf)
{
	struct device *dev = &t->pdev.dev;
	struct nfit_test_resource *nfit_res = FUNC4(sizeof(*nfit_res),
			GFP_KERNEL);
	int rc;

	if (!buf || !nfit_res || !*dma)
		goto err;
	rc = FUNC1(dev, release_nfit_res, nfit_res);
	if (rc)
		goto err;
	FUNC0(&nfit_res->list);
	FUNC6(buf, 0, size);
	nfit_res->dev = dev;
	nfit_res->buf = buf;
	nfit_res->res.start = *dma;
	nfit_res->res.end = *dma + size - 1;
	nfit_res->res.name = "NFIT";
	FUNC8(&nfit_res->lock);
	FUNC0(&nfit_res->requests);
	FUNC7(&nfit_test_lock);
	FUNC5(&nfit_res->list, &t->resources);
	FUNC9(&nfit_test_lock);

	return nfit_res->buf;
 err:
	if (*dma && size >= DIMM_SIZE)
		FUNC2(nfit_pool, *dma, size);
	if (buf)
		FUNC10(buf);
	FUNC3(nfit_res);
	return NULL;
}