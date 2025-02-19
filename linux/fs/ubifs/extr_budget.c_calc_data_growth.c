
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inode_budget; scalar_t__ dent_budget; scalar_t__ page_budget; } ;
struct ubifs_info {TYPE_1__ bi; } ;
struct ubifs_budget_req {scalar_t__ new_ino_d; scalar_t__ new_dent; scalar_t__ new_page; scalar_t__ new_ino; } ;



__attribute__((used)) static int calc_data_growth(const struct ubifs_info *c,
       const struct ubifs_budget_req *req)
{
 int data_growth;

 data_growth = req->new_ino ? c->bi.inode_budget : 0;
 if (req->new_page)
  data_growth += c->bi.page_budget;
 if (req->new_dent)
  data_growth += c->bi.dent_budget;
 data_growth += req->new_ino_d;
 return data_growth;
}
