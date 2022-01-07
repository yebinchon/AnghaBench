
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct htable {int dummy; } ;
struct hbucket {int dummy; } ;


 size_t jhash_size (int) ;

__attribute__((used)) static size_t
htable_size(u8 hbits)
{
 size_t hsize;


 if (hbits > 31)
  return 0;
 hsize = jhash_size(hbits);
 if ((((size_t)-1) - sizeof(struct htable)) / sizeof(struct hbucket *)
     < hsize)
  return 0;

 return hsize * sizeof(struct hbucket *) + sizeof(struct htable);
}
