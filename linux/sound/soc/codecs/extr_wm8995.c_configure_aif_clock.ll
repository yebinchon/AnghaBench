; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_configure_aif_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_configure_aif_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8995_AIF1CLK_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Dividing AIF%d clock to %dHz\0A\00", align 1
@WM8995_AIF1_CLOCKING_1 = common dso_local global i64 0, align 8
@WM8995_AIF1CLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1CLK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @configure_aif_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_aif_clock(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8995_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8995_priv* %11, %struct.wm8995_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %18 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %56 [
    i32 129, label %24
    i32 128, label %30
    i32 131, label %38
    i32 130, label %47
  ]

24:                                               ; preds = %16
  %25 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %59

30:                                               ; preds = %16
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %34 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  br label %59

38:                                               ; preds = %16
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 16
  store i32 %40, i32* %8, align 4
  %41 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %42 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %59

47:                                               ; preds = %16
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, 24
  store i32 %49, i32* %8, align 4
  %50 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %51 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %16
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %93

59:                                               ; preds = %47, %38, %30, %24
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 13500000
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @WM8995_AIF1CLK_DIV, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %59
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %78 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %84 = load i64, i64* @WM8995_AIF1_CLOCKING_1, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32, i32* @WM8995_AIF1CLK_SRC_MASK, align 4
  %89 = load i32, i32* @WM8995_AIF1CLK_DIV_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i64 %87, i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %75, %56
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
