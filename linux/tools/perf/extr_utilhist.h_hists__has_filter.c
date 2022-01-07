
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int socket_filter; scalar_t__ symbol_filter_str; scalar_t__ dso_filter; scalar_t__ thread_filter; } ;



__attribute__((used)) static inline bool hists__has_filter(struct hists *hists)
{
 return hists->thread_filter || hists->dso_filter ||
  hists->symbol_filter_str || (hists->socket_filter > -1);
}
