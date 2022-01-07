; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8524.c_wm8524_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8524.c_wm8524_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8524_priv = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@lrclk_ratios = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Supported sample rate: %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Skipping sample rate: %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8524_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8524_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8524_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %10, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %19 = call %struct.wm8524_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8524_priv* %19, %struct.wm8524_priv** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.wm8524_priv*, %struct.wm8524_priv** %11, align 8
  %22 = getelementptr inbounds %struct.wm8524_priv, %struct.wm8524_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.wm8524_priv*, %struct.wm8524_priv** %11, align 8
  %24 = getelementptr inbounds %struct.wm8524_priv, %struct.wm8524_priv* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %67, %4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %32, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %60 [
    i32 8000, label %41
    i32 32000, label %41
    i32 44100, label %41
    i32 48000, label %41
    i32 88200, label %41
    i32 96000, label %41
    i32 176400, label %41
    i32 192000, label %41
  ]

41:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.wm8524_priv*, %struct.wm8524_priv** %11, align 8
  %49 = getelementptr inbounds %struct.wm8524_priv, %struct.wm8524_priv* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load %struct.wm8524_priv*, %struct.wm8524_priv** %11, align 8
  %56 = getelementptr inbounds %struct.wm8524_priv, %struct.wm8524_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %66

60:                                               ; preds = %31
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.wm8524_priv*, %struct.wm8524_priv** %11, align 8
  %72 = getelementptr inbounds %struct.wm8524_priv, %struct.wm8524_priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.wm8524_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
