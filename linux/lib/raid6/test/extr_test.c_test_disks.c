
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int NDISKS ;
 int PAGE_SIZE ;
 int * data ;
 int * dataptrs ;
 int disk_type (int) ;
 int memcmp (int ,int ,int ) ;
 int memset (int ,int,int ) ;
 int printf (char*,char*,int,int,int,int,char*) ;
 TYPE_1__ raid6_call ;
 int raid6_dual_recov (int,int ,int,int,void**) ;
 int recovi ;
 int recovj ;

__attribute__((used)) static int test_disks(int i, int j)
{
 int erra, errb;

 memset(recovi, 0xf0, PAGE_SIZE);
 memset(recovj, 0xba, PAGE_SIZE);

 dataptrs[i] = recovi;
 dataptrs[j] = recovj;

 raid6_dual_recov(NDISKS, PAGE_SIZE, i, j, (void **)&dataptrs);

 erra = memcmp(data[i], recovi, PAGE_SIZE);
 errb = memcmp(data[j], recovj, PAGE_SIZE);

 if (i < NDISKS-2 && j == NDISKS-1) {


  erra = errb = 0;
 } else {
  printf("algo=%-8s  faila=%3d(%c)  failb=%3d(%c)  %s\n",
         raid6_call.name,
         i, disk_type(i),
         j, disk_type(j),
         (!erra && !errb) ? "OK" :
         !erra ? "ERRB" :
         !errb ? "ERRA" : "ERRAB");
 }

 dataptrs[i] = data[i];
 dataptrs[j] = data[j];

 return erra || errb;
}
