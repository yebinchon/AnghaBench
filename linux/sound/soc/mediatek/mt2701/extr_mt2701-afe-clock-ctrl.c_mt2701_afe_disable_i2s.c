
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dummy; } ;
struct mt2701_i2s_path {int asrco_ck; int * hop_ck; } ;


 int clk_disable_unprepare (int ) ;

void mt2701_afe_disable_i2s(struct mtk_base_afe *afe,
       struct mt2701_i2s_path *i2s_path,
       int dir)
{
 clk_disable_unprepare(i2s_path->hop_ck[dir]);
 clk_disable_unprepare(i2s_path->asrco_ck);
}
