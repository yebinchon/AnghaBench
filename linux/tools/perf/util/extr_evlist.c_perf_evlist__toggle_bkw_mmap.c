
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int bkw_mmap_state; int overwrite_mmap; } ;
typedef enum bkw_mmap_state { ____Placeholder_bkw_mmap_state } bkw_mmap_state ;






 int WARN_ONCE (int,char*) ;
 int perf_evlist__pause (struct evlist*) ;
 int perf_evlist__resume (struct evlist*) ;

void perf_evlist__toggle_bkw_mmap(struct evlist *evlist,
      enum bkw_mmap_state state)
{
 enum bkw_mmap_state old_state = evlist->bkw_mmap_state;
 enum action {
  NONE,
  PAUSE,
  RESUME,
 } action = NONE;

 if (!evlist->overwrite_mmap)
  return;

 switch (old_state) {
 case 129: {
  if (state != 128)
   goto state_err;
  break;
 }
 case 128: {
  if (state != 131)
   goto state_err;
  action = PAUSE;
  break;
 }
 case 131: {
  if (state != 130)
   goto state_err;
  break;
 }
 case 130: {
  if (state != 128)
   goto state_err;
  action = RESUME;
  break;
 }
 default:
  WARN_ONCE(1, "Shouldn't get there\n");
 }

 evlist->bkw_mmap_state = state;

 switch (action) {
 case PAUSE:
  perf_evlist__pause(evlist);
  break;
 case RESUME:
  perf_evlist__resume(evlist);
  break;
 case NONE:
 default:
  break;
 }

state_err:
 return;
}
