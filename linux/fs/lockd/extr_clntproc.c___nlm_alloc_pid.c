
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nlm_host {int h_pidcount; } ;


 scalar_t__ nlm_pidbusy (struct nlm_host*,scalar_t__) ;

__attribute__((used)) static inline uint32_t __nlm_alloc_pid(struct nlm_host *host)
{
 uint32_t res;
 do {
  res = host->h_pidcount++;
 } while (nlm_pidbusy(host, res) < 0);
 return res;
}
