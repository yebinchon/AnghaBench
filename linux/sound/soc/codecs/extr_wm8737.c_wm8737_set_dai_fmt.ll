; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8737_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8737_LRP = common dso_local global i32 0, align 4
@WM8737_AUDIO_FORMAT = common dso_local global i32 0, align 4
@WM8737_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8737_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8737_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %19 [
    i32 136, label %14
    i32 135, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @WM8737_MS, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %39 [
    i32 132, label %26
    i32 128, label %29
    i32 131, label %30
    i32 134, label %33
    i32 133, label %36
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %42

29:                                               ; preds = %22
  br label %42

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 3
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 19
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %22
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %36, %33, %30, %29, %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %51 [
    i32 129, label %46
    i32 130, label %47
  ]

46:                                               ; preds = %42
  br label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @WM8737_LRP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %47, %46
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %56 = load i32, i32* @WM8737_AUDIO_FORMAT, align 4
  %57 = load i32, i32* @WM8737_FORMAT_MASK, align 4
  %58 = load i32, i32* @WM8737_LRP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WM8737_MS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %51, %39, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
