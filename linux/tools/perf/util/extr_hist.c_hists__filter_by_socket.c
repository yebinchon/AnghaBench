
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hists {int socket_filter; } ;
struct TYPE_2__ {scalar_t__ report_hierarchy; } ;


 int HIST_FILTER__SOCKET ;
 int hists__filter_by_type (struct hists*,int ,int ) ;
 int hists__filter_entry_by_socket ;
 int hists__filter_hierarchy (struct hists*,int ,int *) ;
 TYPE_1__ symbol_conf ;

void hists__filter_by_socket(struct hists *hists)
{
 if (symbol_conf.report_hierarchy)
  hists__filter_hierarchy(hists, HIST_FILTER__SOCKET,
     &hists->socket_filter);
 else
  hists__filter_by_type(hists, HIST_FILTER__SOCKET,
          hists__filter_entry_by_socket);
}
