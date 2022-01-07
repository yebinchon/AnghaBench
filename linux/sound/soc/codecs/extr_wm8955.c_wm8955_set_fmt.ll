; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8955_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8955_LRP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8955_BCLKINV = common dso_local global i32 0, align 4
@WM8955_AUDIO_INTERFACE = common dso_local global i32 0, align 4
@WM8955_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8955_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
    i32 137, label %14
    i32 138, label %15
  ]

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @WM8955_MS, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %40 [
    i32 135, label %26
    i32 136, label %30
    i32 134, label %33
    i32 128, label %36
    i32 131, label %37
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @WM8955_LRP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %22, %26
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 3
  store i32 %32, i32* %7, align 4
  br label %43

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %7, align 4
  br label %43

36:                                               ; preds = %22
  br label %43

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %37, %36, %33, %30
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %83 [
    i32 136, label %47
    i32 135, label %47
    i32 134, label %60
    i32 128, label %60
    i32 131, label %60
  ]

47:                                               ; preds = %43, %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %56 [
    i32 129, label %51
    i32 132, label %52
  ]

51:                                               ; preds = %47
  br label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @WM8955_BCLKINV, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %98

59:                                               ; preds = %52, %51
  br label %86

60:                                               ; preds = %43, %43, %43
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %79 [
    i32 129, label %64
    i32 133, label %65
    i32 132, label %71
    i32 130, label %75
  ]

64:                                               ; preds = %60
  br label %82

65:                                               ; preds = %60
  %66 = load i32, i32* @WM8955_BCLKINV, align 4
  %67 = load i32, i32* @WM8955_LRP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %82

71:                                               ; preds = %60
  %72 = load i32, i32* @WM8955_BCLKINV, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %82

75:                                               ; preds = %60
  %76 = load i32, i32* @WM8955_LRP, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %82

79:                                               ; preds = %60
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %75, %71, %65, %64
  br label %86

83:                                               ; preds = %43
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %98

86:                                               ; preds = %82, %59
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %88 = load i32, i32* @WM8955_AUDIO_INTERFACE, align 4
  %89 = load i32, i32* @WM8955_MS, align 4
  %90 = load i32, i32* @WM8955_FORMAT_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @WM8955_BCLKINV, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WM8955_LRP, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %86, %83, %79, %56, %40, %19
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
