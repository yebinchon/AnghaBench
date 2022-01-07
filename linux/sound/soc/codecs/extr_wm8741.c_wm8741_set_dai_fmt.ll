; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wm8741_set_dai_fmt:    Format=%x, Clock Inv=%x\0A\00", align 1
@WM8741_FORMAT_CONTROL = common dso_local global i32 0, align 4
@WM8741_BCP_MASK = common dso_local global i32 0, align 4
@WM8741_LRP_MASK = common dso_local global i32 0, align 4
@WM8741_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8741_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8741_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %15 [
    i32 137, label %14
  ]

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %27 [
    i32 134, label %22
    i32 128, label %23
    i32 131, label %24
    i32 136, label %25
    i32 135, label %26
  ]

22:                                               ; preds = %18
  store i32 8, i32* %7, align 4
  br label %30

23:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %30

24:                                               ; preds = %18
  store i32 4, i32* %7, align 4
  br label %30

25:                                               ; preds = %18
  store i32 12, i32* %7, align 4
  br label %30

26:                                               ; preds = %18
  store i32 28, i32* %7, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %26, %25, %24, %23, %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %44 [
    i32 129, label %34
    i32 130, label %35
    i32 132, label %38
    i32 133, label %41
  ]

34:                                               ; preds = %30
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 16
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 32
  store i32 %40, i32* %7, align 4
  br label %47

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 48
  store i32 %43, i32* %7, align 4
  br label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %41, %38, %35, %34
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %59 = load i32, i32* @WM8741_FORMAT_CONTROL, align 4
  %60 = load i32, i32* @WM8741_BCP_MASK, align 4
  %61 = load i32, i32* @WM8741_LRP_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @WM8741_FMT_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %47, %44, %27, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
