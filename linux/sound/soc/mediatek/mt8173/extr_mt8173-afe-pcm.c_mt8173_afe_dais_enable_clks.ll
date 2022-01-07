; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_enable_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_enable_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to enable m_ck\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to enable b_ck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, %struct.clk*, %struct.clk*)* @mt8173_afe_dais_enable_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_dais_enable_clks(%struct.mtk_base_afe* %0, %struct.clk* %1, %struct.clk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %5, align 8
  store %struct.clk* %1, %struct.clk** %6, align 8
  store %struct.clk* %2, %struct.clk** %7, align 8
  %9 = load %struct.clk*, %struct.clk** %6, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.clk*, %struct.clk** %6, align 8
  %13 = call i32 @clk_prepare_enable(%struct.clk* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.clk*, %struct.clk** %7, align 8
  %25 = icmp ne %struct.clk* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = call i32 @clk_prepare_enable(%struct.clk* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %23
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %31, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
