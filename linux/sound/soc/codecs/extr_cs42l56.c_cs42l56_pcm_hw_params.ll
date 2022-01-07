; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l56_private = type { i32 }

@CS42L56_CLKCTL_2 = common dso_local global i32 0, align 4
@CS42L56_CLK_RATIO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported mclk/sclk/lrclk ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs42l56_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs42l56_private*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs42l56_private* %15, %struct.cs42l56_private** %9, align 8
  %16 = load %struct.cs42l56_private*, %struct.cs42l56_private** %9, align 8
  %17 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  %21 = call i32 @cs42l56_get_mclk_ratio(i32 %18, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %26 = load i32, i32* @CS42L56_CLKCTL_2, align 4
  %27 = load i32, i32* @CS42L56_CLK_RATIO_MASK, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @cs42l56_get_mclk_ratio(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
