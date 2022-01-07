
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word_t ;
struct unwind_info {int thread; } ;
struct map {int dummy; } ;
struct addr_location {int dummy; } ;


 int PERF_RECORD_MISC_USER ;
 struct map* thread__find_map (int ,int ,int ,struct addr_location*) ;

__attribute__((used)) static struct map *find_map(unw_word_t ip, struct unwind_info *ui)
{
 struct addr_location al;
 return thread__find_map(ui->thread, PERF_RECORD_MISC_USER, ip, &al);
}
