
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;


 int FLUSH_COND_STABLE ;
 scalar_t__ WB_SYNC_ALL ;

__attribute__((used)) static int wb_priority(struct writeback_control *wbc)
{
 int ret = 0;

 if (wbc->sync_mode == WB_SYNC_ALL)
  ret = FLUSH_COND_STABLE;
 return ret;
}
