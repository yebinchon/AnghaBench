
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct vport {int dummy; } ;


 int ALIGN (int,int ) ;
 int VPORT_ALIGN ;

__attribute__((used)) static inline void *vport_priv(const struct vport *vport)
{
 return (u8 *)(uintptr_t)vport + ALIGN(sizeof(struct vport), VPORT_ALIGN);
}
