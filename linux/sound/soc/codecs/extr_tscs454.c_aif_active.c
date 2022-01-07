
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aifs_status {int streams; } ;



__attribute__((used)) static bool aif_active(struct aifs_status *status, int aif_id)
{
 return (0x03 << aif_id * 2) & status->streams;
}
