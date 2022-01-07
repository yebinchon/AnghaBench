
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;
struct hists {int socket_filter; int hpp_formats; struct perf_hpp_list* hpp_list; int lock; void* entries; void* entries_collapsed; void** entries_in_array; void** entries_in; } ;


 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT_CACHED ;
 int memset (struct hists*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

int __hists__init(struct hists *hists, struct perf_hpp_list *hpp_list)
{
 memset(hists, 0, sizeof(*hists));
 hists->entries_in_array[0] = hists->entries_in_array[1] = RB_ROOT_CACHED;
 hists->entries_in = &hists->entries_in_array[0];
 hists->entries_collapsed = RB_ROOT_CACHED;
 hists->entries = RB_ROOT_CACHED;
 pthread_mutex_init(&hists->lock, ((void*)0));
 hists->socket_filter = -1;
 hists->hpp_list = hpp_list;
 INIT_LIST_HEAD(&hists->hpp_formats);
 return 0;
}
