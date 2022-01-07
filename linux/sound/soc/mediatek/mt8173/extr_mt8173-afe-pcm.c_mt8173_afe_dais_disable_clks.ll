; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_disable_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_disable_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_base_afe*, %struct.clk*, %struct.clk*)* @mt8173_afe_dais_disable_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt8173_afe_dais_disable_clks(%struct.mtk_base_afe* %0, %struct.clk* %1, %struct.clk* %2) #0 {
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  store %struct.clk* %2, %struct.clk** %6, align 8
  %7 = load %struct.clk*, %struct.clk** %5, align 8
  %8 = icmp ne %struct.clk* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.clk*, %struct.clk** %5, align 8
  %11 = call i32 @clk_disable_unprepare(%struct.clk* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.clk*, %struct.clk** %6, align 8
  %14 = icmp ne %struct.clk* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.clk*, %struct.clk** %6, align 8
  %17 = call i32 @clk_disable_unprepare(%struct.clk* %16)
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
