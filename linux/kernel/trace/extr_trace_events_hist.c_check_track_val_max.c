
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static bool check_track_val_max(u64 track_val, u64 var_val)
{
 if (var_val <= track_val)
  return 0;

 return 1;
}
