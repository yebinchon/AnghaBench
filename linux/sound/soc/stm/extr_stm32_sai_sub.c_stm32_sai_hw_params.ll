; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @stm32_sai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.stm32_sai_sub_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.stm32_sai_sub_data* %11, %struct.stm32_sai_sub_data** %8, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %13 = call i32 @params_width(%struct.snd_pcm_hw_params* %12)
  %14 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %17 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @stm32_sai_set_iec958_status(%struct.stm32_sai_sub_data* %26, %struct.TYPE_2__* %29)
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %33 = call i32 @stm32_sai_set_slots(%struct.snd_soc_dai* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %31
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = call i32 @stm32_sai_set_frame(%struct.snd_soc_dai* %39)
  br label %41

41:                                               ; preds = %38, %19
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @stm32_sai_set_config(%struct.snd_soc_dai* %42, %struct.snd_pcm_substream* %43, %struct.snd_pcm_hw_params* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %41
  %51 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %52 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %58 = call i32 @stm32_sai_configure_clock(%struct.snd_soc_dai* %56, %struct.snd_pcm_hw_params* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %48, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @stm32_sai_set_iec958_status(%struct.stm32_sai_sub_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @stm32_sai_set_slots(%struct.snd_soc_dai*) #1

declare dso_local i32 @stm32_sai_set_frame(%struct.snd_soc_dai*) #1

declare dso_local i32 @stm32_sai_set_config(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @stm32_sai_configure_clock(%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
