; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8711.c_wm8711_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8711.c_wm8711_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8711_IFACE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8711_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8711_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @WM8711_IFACE, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  %14 = and i32 %13, 12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %22 [
    i32 138, label %18
    i32 137, label %21
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, 64
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %2
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %42 [
    i32 134, label %29
    i32 128, label %32
    i32 131, label %33
    i32 136, label %36
    i32 135, label %39
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %7, align 4
  br label %45

32:                                               ; preds = %25
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 3
  store i32 %38, i32* %7, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 19
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %39, %36, %33, %32, %29
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %59 [
    i32 129, label %49
    i32 133, label %50
    i32 132, label %53
    i32 130, label %56
  ]

49:                                               ; preds = %45
  br label %62

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 144
  store i32 %52, i32* %7, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 16
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %56, %53, %50, %49
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = load i32, i32* @WM8711_IFACE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %59, %42, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
