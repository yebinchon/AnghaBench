
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_budget; } ;
struct ubifs_info {TYPE_1__ bi; } ;
struct ubifs_budget_req {int dd_growth; } ;


 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static void release_existing_page_budget(struct ubifs_info *c)
{
 struct ubifs_budget_req req = { .dd_growth = c->bi.page_budget};

 ubifs_release_budget(c, &req);
}
