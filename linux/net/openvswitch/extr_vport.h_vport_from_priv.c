
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vport {int dummy; } ;


 int ALIGN (int,int ) ;
 int VPORT_ALIGN ;

__attribute__((used)) static inline struct vport *vport_from_priv(void *priv)
{
 return (struct vport *)((u8 *)priv - ALIGN(sizeof(struct vport), VPORT_ALIGN));
}
