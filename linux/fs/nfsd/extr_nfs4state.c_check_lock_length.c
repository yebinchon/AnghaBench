
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NFS4_MAX_UINT64 ;

__attribute__((used)) static int
check_lock_length(u64 offset, u64 length)
{
 return ((length == 0) || ((length != NFS4_MAX_UINT64) &&
  (length > ~offset)));
}
