
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_wmm_rule {TYPE_3__* ap; TYPE_1__* client; } ;
struct ieee80211_reg_rule {int has_wmm; struct ieee80211_wmm_rule wmm_rule; } ;
struct fwdb_wmm_rule {TYPE_4__* ap; TYPE_2__* client; } ;
struct fwdb_rule {int end; int start; int wmm_ptr; } ;
struct fwdb_header {int dummy; } ;
struct fwdb_country {int * alpha2; } ;
struct TYPE_8__ {int ecw; int cot; int aifsn; } ;
struct TYPE_7__ {int cot; int aifsn; void* cw_max; void* cw_min; } ;
struct TYPE_6__ {int ecw; int cot; int aifsn; } ;
struct TYPE_5__ {int cot; int aifsn; void* cw_max; void* cw_min; } ;


 unsigned int IEEE80211_NUM_ACS ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 void* ecw2cw (int) ;
 int pr_err (char*,int ,int ,int ,int ) ;
 int valid_wmm (struct fwdb_wmm_rule*) ;

__attribute__((used)) static void set_wmm_rule(const struct fwdb_header *db,
    const struct fwdb_country *country,
    const struct fwdb_rule *rule,
    struct ieee80211_reg_rule *rrule)
{
 struct ieee80211_wmm_rule *wmm_rule = &rrule->wmm_rule;
 struct fwdb_wmm_rule *wmm;
 unsigned int i, wmm_ptr;

 wmm_ptr = be16_to_cpu(rule->wmm_ptr) << 2;
 wmm = (void *)((u8 *)db + wmm_ptr);

 if (!valid_wmm(wmm)) {
  pr_err("Invalid regulatory WMM rule %u-%u in domain %c%c\n",
         be32_to_cpu(rule->start), be32_to_cpu(rule->end),
         country->alpha2[0], country->alpha2[1]);
  return;
 }

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  wmm_rule->client[i].cw_min =
   ecw2cw((wmm->client[i].ecw & 0xf0) >> 4);
  wmm_rule->client[i].cw_max = ecw2cw(wmm->client[i].ecw & 0x0f);
  wmm_rule->client[i].aifsn = wmm->client[i].aifsn;
  wmm_rule->client[i].cot =
   1000 * be16_to_cpu(wmm->client[i].cot);
  wmm_rule->ap[i].cw_min = ecw2cw((wmm->ap[i].ecw & 0xf0) >> 4);
  wmm_rule->ap[i].cw_max = ecw2cw(wmm->ap[i].ecw & 0x0f);
  wmm_rule->ap[i].aifsn = wmm->ap[i].aifsn;
  wmm_rule->ap[i].cot = 1000 * be16_to_cpu(wmm->ap[i].cot);
 }

 rrule->has_wmm = 1;
}
