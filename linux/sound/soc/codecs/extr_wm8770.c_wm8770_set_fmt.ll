; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8770_IFACECTRL = common dso_local global i32 0, align 4
@WM8770_MSTRCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8770_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8770_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %17 [
    i32 136, label %15
    i32 135, label %16
  ]

15:                                               ; preds = %2
  store i32 256, i32* %8, align 4
  br label %20

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %16, %15
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %31 [
    i32 134, label %24
    i32 128, label %27
    i32 131, label %28
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %7, align 4
  br label %34

27:                                               ; preds = %20
  br label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %28, %27, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %48 [
    i32 129, label %38
    i32 133, label %39
    i32 132, label %42
    i32 130, label %45
  ]

38:                                               ; preds = %34
  br label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 12
  store i32 %41, i32* %7, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, 8
  store i32 %44, i32* %7, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %45, %42, %39, %38
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = load i32, i32* @WM8770_IFACECTRL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 15, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %57 = load i32, i32* @WM8770_MSTRCTRL, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 256, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %48, %31, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
