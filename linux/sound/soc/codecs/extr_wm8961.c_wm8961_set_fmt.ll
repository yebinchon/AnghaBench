; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8961_AUDIO_INTERFACE_0 = common dso_local global i32 0, align 4
@WM8961_BCLKINV = common dso_local global i32 0, align 4
@WM8961_LRP = common dso_local global i32 0, align 4
@WM8961_MS = common dso_local global i32 0, align 4
@WM8961_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8961_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @WM8961_BCLKINV, align 4
  %15 = load i32, i32* @WM8961_LRP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WM8961_MS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WM8961_FORMAT_MASK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %32 [
    i32 138, label %27
    i32 137, label %31
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @WM8961_MS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %2
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %61 [
    i32 128, label %39
    i32 131, label %40
    i32 134, label %43
    i32 135, label %46
    i32 136, label %50
  ]

39:                                               ; preds = %35
  br label %64

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %64

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %7, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load i32, i32* @WM8961_LRP, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %35, %46
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 3
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %57 [
    i32 129, label %56
    i32 132, label %56
  ]

56:                                               ; preds = %50, %50
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %91

60:                                               ; preds = %56
  br label %64

61:                                               ; preds = %35
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %60, %43, %40, %39
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %83 [
    i32 129, label %68
    i32 130, label %69
    i32 132, label %73
    i32 133, label %77
  ]

68:                                               ; preds = %64
  br label %86

69:                                               ; preds = %64
  %70 = load i32, i32* @WM8961_LRP, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %86

73:                                               ; preds = %64
  %74 = load i32, i32* @WM8961_BCLKINV, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %86

77:                                               ; preds = %64
  %78 = load i32, i32* @WM8961_BCLKINV, align 4
  %79 = load i32, i32* @WM8961_LRP, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %86

83:                                               ; preds = %64
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %91

86:                                               ; preds = %77, %73, %69, %68
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %88 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %83, %61, %57, %32
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
