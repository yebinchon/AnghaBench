
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aif {unsigned int id; } ;



__attribute__((used)) static inline void aif_init(struct aif *aif, unsigned int id)
{
 aif->id = id;
}
