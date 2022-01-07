
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_llc {int dummy; } ;


 int llc_ui_addrnull ;
 int memcmp (struct sockaddr_llc*,int *,int) ;

__attribute__((used)) static inline u8 llc_ui_addr_null(struct sockaddr_llc *addr)
{
 return !memcmp(addr, &llc_ui_addrnull, sizeof(*addr));
}
