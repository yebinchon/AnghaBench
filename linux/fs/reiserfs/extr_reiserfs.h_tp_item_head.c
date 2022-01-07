
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct item_head {int dummy; } ;


 int PATH_LAST_POSITION (struct treepath const*) ;
 int PATH_PLAST_BUFFER (struct treepath const*) ;
 struct item_head* item_head (int ,int ) ;

__attribute__((used)) static inline struct item_head *tp_item_head(const struct treepath *path)
{
 return item_head(PATH_PLAST_BUFFER(path), PATH_LAST_POSITION(path));
}
