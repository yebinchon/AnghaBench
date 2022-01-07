
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static void *delta_create_dummy(void *priv, void *parent_obj, void *obj)
{
 return ERR_PTR(-EOPNOTSUPP);
}
