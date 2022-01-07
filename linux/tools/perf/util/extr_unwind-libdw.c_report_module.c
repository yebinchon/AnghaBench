
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct unwind_info {int dummy; } ;
struct addr_location {int dummy; } ;


 int __report_module (struct addr_location*,int ,struct unwind_info*) ;

__attribute__((used)) static int report_module(u64 ip, struct unwind_info *ui)
{
 struct addr_location al;

 return __report_module(&al, ip, ui);
}
