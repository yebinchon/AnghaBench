
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int idr_next; } ;


 unsigned int READ_ONCE (int ) ;

__attribute__((used)) static inline unsigned int idr_get_cursor(const struct idr *idr)
{
 return READ_ONCE(idr->idr_next);
}
