
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct hws_trailer_entry {int * timestamp; } ;


 unsigned long long be64toh (unsigned long long) ;
 int memcpy (unsigned long long*,int *,int) ;

__attribute__((used)) static unsigned long long trailer_timestamp(struct hws_trailer_entry *te,
         int idx)
{



 unsigned long long ts;

 memcpy(&ts, &te->timestamp[idx], sizeof(ts));
 return be64toh(ts);
}
