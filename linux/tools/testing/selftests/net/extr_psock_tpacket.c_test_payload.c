
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {scalar_t__ h_proto; } ;


 int ETH_P_IP ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int stderr ;

__attribute__((used)) static void test_payload(void *pay, size_t len)
{
 struct ethhdr *eth = pay;

 if (len < sizeof(struct ethhdr)) {
  fprintf(stderr, "test_payload: packet too "
   "small: %zu bytes!\n", len);
  exit(1);
 }

 if (eth->h_proto != htons(ETH_P_IP)) {
  fprintf(stderr, "test_payload: wrong ethernet "
   "type: 0x%x!\n", ntohs(eth->h_proto));
  exit(1);
 }
}
