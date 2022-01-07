; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1789.c_pcm1789_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1789.c_pcm1789_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm1789_private = type { i32, i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid DAI format\0A\00", align 1
@PCM1789_FMT_CONTROL = common dso_local global i32 0, align 4
@PCM1789_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pcm1789_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm1789_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm1789_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.pcm1789_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.pcm1789_private* %16, %struct.pcm1789_private** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.pcm1789_private*, %struct.pcm1789_private** %9, align 8
  %20 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcm1789_private*, %struct.pcm1789_private** %9, align 8
  %22 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %51 [
    i32 128, label %26
    i32 130, label %35
    i32 129, label %43
  ]

26:                                               ; preds = %3
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_width(%struct.snd_pcm_hw_params* %27)
  switch i32 %28, label %31 [
    i32 24, label %29
    i32 16, label %30
  ]

29:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  br label %34

30:                                               ; preds = %26
  store i32 3, i32* %10, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %30, %29
  br label %58

35:                                               ; preds = %3
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_width(%struct.snd_pcm_hw_params* %36)
  switch i32 %37, label %39 [
    i32 16, label %38
    i32 24, label %38
    i32 32, label %38
  ]

38:                                               ; preds = %35, %35, %35
  store i32 0, i32* %10, align 4
  br label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %38
  br label %58

43:                                               ; preds = %3
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_width(%struct.snd_pcm_hw_params* %44)
  switch i32 %45, label %47 [
    i32 16, label %46
    i32 24, label %46
    i32 32, label %46
  ]

46:                                               ; preds = %43, %43, %43
  store i32 1, i32* %10, align 4
  br label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %46
  br label %58

51:                                               ; preds = %3
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %50, %42, %34
  %59 = load %struct.pcm1789_private*, %struct.pcm1789_private** %9, align 8
  %60 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCM1789_FMT_CONTROL, align 4
  %63 = load i32, i32* @PCM1789_FMT_MASK, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %68, %51, %47, %39, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.pcm1789_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
