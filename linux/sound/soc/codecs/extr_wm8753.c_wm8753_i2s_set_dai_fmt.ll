; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8753_HIFI = common dso_local global i32 0, align 4
@WM8753_IOCTL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8753_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_i2s_set_dai_fmt(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = load i32, i32* @WM8753_HIFI, align 4
  %10 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %8, i32 %9)
  %11 = and i32 %10, 319
  store i32 %11, i32* %7, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = load i32, i32* @WM8753_IOCTL, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  %15 = and i32 %14, 174
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %26 [
    i32 137, label %19
    i32 139, label %20
    i32 138, label %23
  ]

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %20
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 64
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %65 [
    i32 136, label %33
    i32 135, label %33
    i32 134, label %45
    i32 128, label %45
    i32 131, label %45
  ]

33:                                               ; preds = %29, %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %41 [
    i32 129, label %37
    i32 132, label %38
  ]

37:                                               ; preds = %33
  br label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 128
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %77

44:                                               ; preds = %38, %37
  br label %68

45:                                               ; preds = %29, %29, %29
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -17
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %61 [
    i32 129, label %51
    i32 133, label %52
    i32 132, label %55
    i32 130, label %58
  ]

51:                                               ; preds = %45
  br label %64

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, 144
  store i32 %54, i32* %7, align 4
  br label %64

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* %7, align 4
  br label %64

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, 16
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %58, %55, %52, %51
  br label %68

65:                                               ; preds = %29
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %77

68:                                               ; preds = %64, %44
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = load i32, i32* @WM8753_HIFI, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %74 = load i32, i32* @WM8753_IOCTL, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %65, %61, %41, %26
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
