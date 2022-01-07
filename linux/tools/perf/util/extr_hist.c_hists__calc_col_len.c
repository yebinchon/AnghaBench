
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_19__ ;
typedef struct TYPE_28__ TYPE_18__ ;
typedef struct TYPE_27__ TYPE_17__ ;
typedef struct TYPE_26__ TYPE_16__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int u16 ;
struct hists {int dummy; } ;
struct TYPE_32__ {TYPE_2__* map; TYPE_1__* sym; } ;
struct hist_entry {scalar_t__ trace_output; scalar_t__ transaction; scalar_t__ srcfile; scalar_t__ srcline; TYPE_17__* mem_info; TYPE_11__* branch_info; TYPE_4__* parent; TYPE_3__ ms; int thread; } ;
struct TYPE_38__ {int dso; } ;
struct TYPE_37__ {scalar_t__ namelen; } ;
struct TYPE_36__ {TYPE_6__* map; TYPE_5__* sym; } ;
struct TYPE_35__ {int dso; } ;
struct TYPE_34__ {scalar_t__ namelen; } ;
struct TYPE_33__ {int namelen; } ;
struct TYPE_31__ {int dso; } ;
struct TYPE_30__ {int namelen; } ;
struct TYPE_29__ {scalar_t__ se_header; } ;
struct TYPE_28__ {scalar_t__ nanosecs; } ;
struct TYPE_25__ {TYPE_16__* map; TYPE_12__* sym; } ;
struct TYPE_24__ {TYPE_13__* sym; } ;
struct TYPE_27__ {TYPE_15__ daddr; TYPE_14__ iaddr; } ;
struct TYPE_26__ {int dso; } ;
struct TYPE_23__ {scalar_t__ namelen; } ;
struct TYPE_22__ {scalar_t__ namelen; } ;
struct TYPE_20__ {TYPE_9__* map; TYPE_8__* sym; } ;
struct TYPE_21__ {scalar_t__ srcline_to; scalar_t__ srcline_from; TYPE_10__ to; TYPE_7__ from; } ;


 int BITS_PER_LONG ;
 int HISTC_CGROUP_ID ;
 int HISTC_COMM ;
 int HISTC_CPU ;
 int HISTC_DSO ;
 int HISTC_DSO_FROM ;
 int HISTC_DSO_TO ;
 int HISTC_GLOBAL_WEIGHT ;
 int HISTC_LOCAL_WEIGHT ;
 int HISTC_MEM_DADDR_DSO ;
 int HISTC_MEM_DADDR_SYMBOL ;
 int HISTC_MEM_DCACHELINE ;
 int HISTC_MEM_IADDR_SYMBOL ;
 int HISTC_MEM_LOCKED ;
 int HISTC_MEM_LVL ;
 int HISTC_MEM_PHYS_DADDR ;
 int HISTC_MEM_SNOOP ;
 int HISTC_MEM_TLB ;
 int HISTC_PARENT ;
 int HISTC_SOCKET ;
 int HISTC_SRCFILE ;
 int HISTC_SRCLINE ;
 int HISTC_SRCLINE_FROM ;
 int HISTC_SRCLINE_TO ;
 int HISTC_SYMBOL ;
 int HISTC_SYMBOL_FROM ;
 int HISTC_SYMBOL_TO ;
 int HISTC_THREAD ;
 int HISTC_TIME ;
 int HISTC_TRACE ;
 int HISTC_TRANSACTION ;
 int MAX (int,int) ;
 int dso__name_len (int ) ;
 int hist_entry__transaction_len () ;
 scalar_t__ hists__new_col_len (struct hists*,int ,unsigned int const) ;
 int hists__set_col_len (struct hists*,int ,int) ;
 int hists__set_unres_dso_col_len (struct hists*,int ) ;
 TYPE_19__ sort_srcline ;
 int strlen (scalar_t__) ;
 TYPE_18__ symbol_conf ;
 int thread__comm_len (int ) ;
 scalar_t__ verbose ;

void hists__calc_col_len(struct hists *hists, struct hist_entry *h)
{
 const unsigned int unresolved_col_width = BITS_PER_LONG / 4;
 int symlen;
 u16 len;






 if (h->ms.sym) {
  symlen = h->ms.sym->namelen + 4;
  if (verbose > 0)
   symlen += BITS_PER_LONG / 4 + 2 + 3;
  hists__new_col_len(hists, HISTC_SYMBOL, symlen);
 } else {
  symlen = unresolved_col_width + 4 + 2;
  hists__new_col_len(hists, HISTC_SYMBOL, symlen);
  hists__set_unres_dso_col_len(hists, HISTC_DSO);
 }

 len = thread__comm_len(h->thread);
 if (hists__new_col_len(hists, HISTC_COMM, len))
  hists__set_col_len(hists, HISTC_THREAD, len + 8);

 if (h->ms.map) {
  len = dso__name_len(h->ms.map->dso);
  hists__new_col_len(hists, HISTC_DSO, len);
 }

 if (h->parent)
  hists__new_col_len(hists, HISTC_PARENT, h->parent->namelen);

 if (h->branch_info) {
  if (h->branch_info->from.sym) {
   symlen = (int)h->branch_info->from.sym->namelen + 4;
   if (verbose > 0)
    symlen += BITS_PER_LONG / 4 + 2 + 3;
   hists__new_col_len(hists, HISTC_SYMBOL_FROM, symlen);

   symlen = dso__name_len(h->branch_info->from.map->dso);
   hists__new_col_len(hists, HISTC_DSO_FROM, symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_SYMBOL_FROM, symlen);
   hists__set_unres_dso_col_len(hists, HISTC_DSO_FROM);
  }

  if (h->branch_info->to.sym) {
   symlen = (int)h->branch_info->to.sym->namelen + 4;
   if (verbose > 0)
    symlen += BITS_PER_LONG / 4 + 2 + 3;
   hists__new_col_len(hists, HISTC_SYMBOL_TO, symlen);

   symlen = dso__name_len(h->branch_info->to.map->dso);
   hists__new_col_len(hists, HISTC_DSO_TO, symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_SYMBOL_TO, symlen);
   hists__set_unres_dso_col_len(hists, HISTC_DSO_TO);
  }

  if (h->branch_info->srcline_from)
   hists__new_col_len(hists, HISTC_SRCLINE_FROM,
     strlen(h->branch_info->srcline_from));
  if (h->branch_info->srcline_to)
   hists__new_col_len(hists, HISTC_SRCLINE_TO,
     strlen(h->branch_info->srcline_to));
 }

 if (h->mem_info) {
  if (h->mem_info->daddr.sym) {
   symlen = (int)h->mem_info->daddr.sym->namelen + 4
          + unresolved_col_width + 2;
   hists__new_col_len(hists, HISTC_MEM_DADDR_SYMBOL,
        symlen);
   hists__new_col_len(hists, HISTC_MEM_DCACHELINE,
        symlen + 1);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_MEM_DADDR_SYMBOL,
        symlen);
   hists__new_col_len(hists, HISTC_MEM_DCACHELINE,
        symlen);
  }

  if (h->mem_info->iaddr.sym) {
   symlen = (int)h->mem_info->iaddr.sym->namelen + 4
          + unresolved_col_width + 2;
   hists__new_col_len(hists, HISTC_MEM_IADDR_SYMBOL,
        symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__new_col_len(hists, HISTC_MEM_IADDR_SYMBOL,
        symlen);
  }

  if (h->mem_info->daddr.map) {
   symlen = dso__name_len(h->mem_info->daddr.map->dso);
   hists__new_col_len(hists, HISTC_MEM_DADDR_DSO,
        symlen);
  } else {
   symlen = unresolved_col_width + 4 + 2;
   hists__set_unres_dso_col_len(hists, HISTC_MEM_DADDR_DSO);
  }

  hists__new_col_len(hists, HISTC_MEM_PHYS_DADDR,
       unresolved_col_width + 4 + 2);

 } else {
  symlen = unresolved_col_width + 4 + 2;
  hists__new_col_len(hists, HISTC_MEM_DADDR_SYMBOL, symlen);
  hists__new_col_len(hists, HISTC_MEM_IADDR_SYMBOL, symlen);
  hists__set_unres_dso_col_len(hists, HISTC_MEM_DADDR_DSO);
 }

 hists__new_col_len(hists, HISTC_CGROUP_ID, 20);
 hists__new_col_len(hists, HISTC_CPU, 3);
 hists__new_col_len(hists, HISTC_SOCKET, 6);
 hists__new_col_len(hists, HISTC_MEM_LOCKED, 6);
 hists__new_col_len(hists, HISTC_MEM_TLB, 22);
 hists__new_col_len(hists, HISTC_MEM_SNOOP, 12);
 hists__new_col_len(hists, HISTC_MEM_LVL, 21 + 3);
 hists__new_col_len(hists, HISTC_LOCAL_WEIGHT, 12);
 hists__new_col_len(hists, HISTC_GLOBAL_WEIGHT, 12);
 if (symbol_conf.nanosecs)
  hists__new_col_len(hists, HISTC_TIME, 16);
 else
  hists__new_col_len(hists, HISTC_TIME, 12);

 if (h->srcline) {
  len = MAX(strlen(h->srcline), strlen(sort_srcline.se_header));
  hists__new_col_len(hists, HISTC_SRCLINE, len);
 }

 if (h->srcfile)
  hists__new_col_len(hists, HISTC_SRCFILE, strlen(h->srcfile));

 if (h->transaction)
  hists__new_col_len(hists, HISTC_TRANSACTION,
       hist_entry__transaction_len());

 if (h->trace_output)
  hists__new_col_len(hists, HISTC_TRACE, strlen(h->trace_output));
}
