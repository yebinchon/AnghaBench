; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8962_LRCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8962_BCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8962_MSTR = common dso_local global i32 0, align 4
@WM8962_AUDIO_INTERFACE_0 = common dso_local global i32 0, align 4
@WM8962_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8962_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %37 [
    i32 135, label %14
    i32 136, label %19
    i32 128, label %30
    i32 131, label %31
    i32 134, label %34
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @WM8962_LRCLK_INV, align 4
  %16 = or i32 %15, 3
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %2, %14
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 3
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 132, label %25
  ]

25:                                               ; preds = %19, %19
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %25
  br label %40

30:                                               ; preds = %2
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %86

40:                                               ; preds = %34, %31, %30, %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %59 [
    i32 129, label %44
    i32 132, label %45
    i32 130, label %49
    i32 133, label %53
  ]

44:                                               ; preds = %40
  br label %62

45:                                               ; preds = %40
  %46 = load i32, i32* @WM8962_BCLK_INV, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %62

49:                                               ; preds = %40
  %50 = load i32, i32* @WM8962_LRCLK_INV, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %62

53:                                               ; preds = %40
  %54 = load i32, i32* @WM8962_BCLK_INV, align 4
  %55 = load i32, i32* @WM8962_LRCLK_INV, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %40
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %86

62:                                               ; preds = %53, %49, %45, %44
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %71 [
    i32 138, label %66
    i32 137, label %70
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @WM8962_MSTR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %62
  br label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %86

74:                                               ; preds = %70, %66
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %76 = load i32, i32* @WM8962_AUDIO_INTERFACE_0, align 4
  %77 = load i32, i32* @WM8962_FMT_MASK, align 4
  %78 = load i32, i32* @WM8962_BCLK_INV, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @WM8962_MSTR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WM8962_LRCLK_INV, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %83, i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %74, %71, %59, %37, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
