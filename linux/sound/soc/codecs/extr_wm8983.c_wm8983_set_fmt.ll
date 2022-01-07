; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown dai format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8983_AUDIO_INTERFACE = common dso_local global i32 0, align 4
@WM8983_FMT_MASK = common dso_local global i32 0, align 4
@WM8983_FMT_SHIFT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown master/slave configuration\0A\00", align 1
@WM8983_CLOCK_GEN_CONTROL = common dso_local global i32 0, align 4
@WM8983_MS_MASK = common dso_local global i32 0, align 4
@WM8983_MS_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"DSP A/B modes are not supported\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown polarity configuration\0A\00", align 1
@WM8983_LRCP_MASK = common dso_local global i32 0, align 4
@WM8983_LRCP_SHIFT = common dso_local global i32 0, align 4
@WM8983_BCP_MASK = common dso_local global i32 0, align 4
@WM8983_BCP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8983_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8983_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %21 [
    i32 134, label %17
    i32 128, label %18
    i32 131, label %19
    i32 136, label %20
    i32 135, label %20
  ]

17:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %28

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

19:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %28

20:                                               ; preds = %2, %2
  store i32 3, i32* %7, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %20, %19, %18, %17
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %30 = load i32, i32* @WM8983_AUDIO_INTERFACE, align 4
  %31 = load i32, i32* @WM8983_FMT_MASK, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @WM8983_FMT_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %41 [
    i32 138, label %39
    i32 137, label %40
  ]

39:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %48

40:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %48

41:                                               ; preds = %28
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %40, %39
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %50 = load i32, i32* @WM8983_CLOCK_GEN_CONTROL, align 4
  %51 = load i32, i32* @WM8983_MS_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @WM8983_MS_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %66 [
    i32 136, label %59
    i32 135, label %59
  ]

59:                                               ; preds = %48, %48
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %97

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %70 = and i32 %68, %69
  switch i32 %70, label %75 [
    i32 129, label %71
    i32 133, label %72
    i32 132, label %73
    i32 130, label %74
  ]

71:                                               ; preds = %67
  br label %82

72:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %82

73:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  br label %82

74:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %82

75:                                               ; preds = %67
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %97

82:                                               ; preds = %74, %73, %72, %71
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %84 = load i32, i32* @WM8983_AUDIO_INTERFACE, align 4
  %85 = load i32, i32* @WM8983_LRCP_MASK, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @WM8983_LRCP_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i32 %84, i32 %85, i32 %88)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %91 = load i32, i32* @WM8983_AUDIO_INTERFACE, align 4
  %92 = load i32, i32* @WM8983_BCP_MASK, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @WM8983_BCP_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %90, i32 %91, i32 %92, i32 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %82, %75, %59, %41, %21
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
