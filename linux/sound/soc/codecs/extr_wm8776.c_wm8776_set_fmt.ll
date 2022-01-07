; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8776_DACIFCTRL = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8776_MSTRCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8776_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 128, label %18
    i32 129, label %20
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @WM8776_DACIFCTRL, align 4
  store i32 %19, i32* %7, align 4
  store i32 128, i32* %9, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @WM8776_ADCIFCTRL, align 4
  store i32 %21, i32* %7, align 4
  store i32 256, i32* %9, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %20, %18
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %31 [
    i32 138, label %29
    i32 137, label %30
  ]

29:                                               ; preds = %25
  br label %34

30:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %45 [
    i32 136, label %38
    i32 130, label %41
    i32 133, label %42
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %34
  br label %48

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %42, %41, %38
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %62 [
    i32 131, label %52
    i32 135, label %53
    i32 134, label %56
    i32 132, label %59
  ]

52:                                               ; preds = %48
  br label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, 12
  store i32 %55, i32* %8, align 4
  br label %65

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, 8
  store i32 %58, i32* %8, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, 4
  store i32 %61, i32* %8, align 4
  br label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %59, %56, %53, %52
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 15, i32 %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 384, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %62, %45, %31, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
