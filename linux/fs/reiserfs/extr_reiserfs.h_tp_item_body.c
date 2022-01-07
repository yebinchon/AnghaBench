
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;


 int PATH_LAST_POSITION (struct treepath const*) ;
 int PATH_PLAST_BUFFER (struct treepath const*) ;
 void* item_body (int ,int ) ;

__attribute__((used)) static inline void *tp_item_body(const struct treepath *path)
{
 return item_body(PATH_PLAST_BUFFER(path), PATH_LAST_POSITION(path));
}
