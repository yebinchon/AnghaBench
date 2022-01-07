; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_set_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_dais_set_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to set m_ck rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to set b_ck rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, %struct.clk*, i32, %struct.clk*, i32)* @mt8173_afe_dais_set_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe* %0, %struct.clk* %1, i32 %2, %struct.clk* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_base_afe*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %7, align 8
  store %struct.clk* %1, %struct.clk** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.clk* %3, %struct.clk** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.clk*, %struct.clk** %8, align 8
  %14 = icmp ne %struct.clk* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load %struct.clk*, %struct.clk** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @clk_set_rate(%struct.clk* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.clk*, %struct.clk** %10, align 8
  %30 = icmp ne %struct.clk* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.clk*, %struct.clk** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @clk_set_rate(%struct.clk* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %39 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %28
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %37, %21
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
