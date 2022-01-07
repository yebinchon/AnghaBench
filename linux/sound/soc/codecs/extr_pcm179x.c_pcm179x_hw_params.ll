; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm179x.c_pcm179x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm179x.c_pcm179x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm179x_private = type { i32, i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid DAI format\0A\00", align 1
@PCM179X_FMT_SHIFT = common dso_local global i32 0, align 4
@PCM179X_ATLD_ENABLE = common dso_local global i32 0, align 4
@PCM179X_FMT_CONTROL = common dso_local global i32 0, align 4
@PCM179X_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pcm179x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm179x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm179x_private*, align 8
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
  %16 = call %struct.pcm179x_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.pcm179x_private* %16, %struct.pcm179x_private** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.pcm179x_private*, %struct.pcm179x_private** %9, align 8
  %20 = getelementptr inbounds %struct.pcm179x_private, %struct.pcm179x_private* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcm179x_private*, %struct.pcm179x_private** %9, align 8
  %22 = getelementptr inbounds %struct.pcm179x_private, %struct.pcm179x_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %44 [
    i32 128, label %26
    i32 129, label %35
  ]

26:                                               ; preds = %3
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_width(%struct.snd_pcm_hw_params* %27)
  switch i32 %28, label %31 [
    i32 24, label %29
    i32 32, label %29
    i32 16, label %30
  ]

29:                                               ; preds = %26, %26
  store i32 2, i32* %10, align 4
  br label %34

30:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %30, %29
  br label %51

35:                                               ; preds = %3
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_width(%struct.snd_pcm_hw_params* %36)
  switch i32 %37, label %40 [
    i32 24, label %38
    i32 32, label %38
    i32 16, label %39
  ]

38:                                               ; preds = %35, %35
  store i32 5, i32* %10, align 4
  br label %43

39:                                               ; preds = %35
  store i32 4, i32* %10, align 4
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %71

43:                                               ; preds = %39, %38
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %71

51:                                               ; preds = %43, %34
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PCM179X_FMT_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* @PCM179X_ATLD_ENABLE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.pcm179x_private*, %struct.pcm179x_private** %9, align 8
  %58 = getelementptr inbounds %struct.pcm179x_private, %struct.pcm179x_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCM179X_FMT_CONTROL, align 4
  %61 = load i32, i32* @PCM179X_FMT_MASK, align 4
  %62 = load i32, i32* @PCM179X_ATLD_ENABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %68, %44, %40, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.pcm179x_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
