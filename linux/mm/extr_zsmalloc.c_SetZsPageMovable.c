
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {int dummy; } ;



__attribute__((used)) static void SetZsPageMovable(struct zs_pool *pool, struct zspage *zspage) {}
