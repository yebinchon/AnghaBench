; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8728.c_wm8728_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8728.c_wm8728_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8728_IFCTL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8728_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8728_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @WM8728_IFCTL, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %20 [
    i32 132, label %17
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %28 [
    i32 133, label %27
  ]

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %51 [
    i32 128, label %35
    i32 130, label %38
    i32 129, label %43
    i32 131, label %48
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, -35
  store i32 %37, i32* %7, align 4
  br label %54

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -3
  store i32 %42, i32* %7, align 4
  br label %54

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -33
  store i32 %47, i32* %7, align 4
  br label %54

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 34
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %31
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %48, %43, %38, %35
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %56 = load i32, i32* @WM8728_IFCTL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %51, %28, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
