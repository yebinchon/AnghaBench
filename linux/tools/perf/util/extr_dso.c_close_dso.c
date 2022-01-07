
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 int close_data_fd (struct dso*) ;

__attribute__((used)) static void close_dso(struct dso *dso)
{
 close_data_fd(dso);
}
