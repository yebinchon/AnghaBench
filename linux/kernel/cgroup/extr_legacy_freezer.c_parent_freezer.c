
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct freezer {TYPE_1__ css; } ;


 struct freezer* css_freezer (int ) ;

__attribute__((used)) static struct freezer *parent_freezer(struct freezer *freezer)
{
 return css_freezer(freezer->css.parent);
}
