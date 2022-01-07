
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int socket_filter; } ;
struct hist_entry {int socket; int filtered; } ;


 int HIST_FILTER__SOCKET ;

__attribute__((used)) static bool hists__filter_entry_by_socket(struct hists *hists,
       struct hist_entry *he)
{
 if ((hists->socket_filter > -1) &&
     (he->socket != hists->socket_filter)) {
  he->filtered |= (1 << HIST_FILTER__SOCKET);
  return 1;
 }

 return 0;
}
