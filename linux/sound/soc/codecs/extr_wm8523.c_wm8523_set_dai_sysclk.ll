; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8523_priv = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@lrclk_ratios = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Supported sample rate: %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Skipping sample rate: %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8523_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8523_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %10, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = call %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.wm8523_priv* %18, %struct.wm8523_priv** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %21 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %23 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %65, %4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %31, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %58 [
    i32 8000, label %40
    i32 11025, label %40
    i32 16000, label %40
    i32 22050, label %40
    i32 32000, label %40
    i32 44100, label %40
    i32 48000, label %40
    i32 64000, label %40
    i32 88200, label %40
    i32 96000, label %40
    i32 176400, label %40
    i32 192000, label %40
  ]

40:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %48 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %54 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %64

58:                                               ; preds = %30
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %70 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
