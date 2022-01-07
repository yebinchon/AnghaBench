; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8988_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8988_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  switch i32 %13, label %16 [
    i32 138, label %14
    i32 137, label %15
  ]

14:                                               ; preds = %2
  store i32 64, i32* %7, align 4
  br label %19

15:                                               ; preds = %2
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %36 [
    i32 134, label %23
    i32 128, label %26
    i32 131, label %27
    i32 136, label %30
    i32 135, label %33
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 2
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %19
  br label %39

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 3
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 19
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %33, %30, %27, %26, %23
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %53 [
    i32 129, label %43
    i32 133, label %44
    i32 132, label %47
    i32 130, label %50
  ]

43:                                               ; preds = %39
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 144
  store i32 %46, i32* %7, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 128
  store i32 %49, i32* %7, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 16
  store i32 %52, i32* %7, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %50, %47, %44, %43
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %58 = load i32, i32* @WM8988_IFACE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %53, %36, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
