
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int idr_next; } ;


 int WRITE_ONCE (int ,unsigned int) ;

__attribute__((used)) static inline void idr_set_cursor(struct idr *idr, unsigned int val)
{
 WRITE_ONCE(idr->idr_next, val);
}
