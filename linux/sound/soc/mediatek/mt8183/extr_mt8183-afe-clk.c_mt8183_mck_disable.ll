; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_mck_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_mck_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mtk_base_afe = type { %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { i32* }

@mck_div = common dso_local global %struct.TYPE_2__* null, align 8
@MT8183_I2S5_MCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt8183_mck_disable(%struct.mtk_base_afe* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt8183_afe_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %8, i32 0, i32 0
  %10 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %9, align 8
  store %struct.mt8183_afe_private* %10, %struct.mt8183_afe_private** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mck_div, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mck_div, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MT8183_I2S5_MCK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %5, align 8
  %29 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %5, align 8
  %40 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  br label %47

47:                                               ; preds = %26, %38, %27
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
