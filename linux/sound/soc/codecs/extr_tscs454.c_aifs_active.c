
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aifs_status {int streams; } ;



__attribute__((used)) static bool aifs_active(struct aifs_status *status)
{
 return status->streams;
}
