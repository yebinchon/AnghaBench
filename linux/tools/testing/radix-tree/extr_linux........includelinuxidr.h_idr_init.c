
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int idr_init_base (struct idr*,int ) ;

__attribute__((used)) static inline void idr_init(struct idr *idr)
{
 idr_init_base(idr, 0);
}
