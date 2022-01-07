; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.lpass_pcm_data* }
%struct.lpass_pcm_data = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error writing to rdmactl reg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lpass_platform_pcmops_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcmops_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.lpass_data*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.lpass_pcm_data*, align 8
  %8 = alloca %struct.lpass_variant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = load i32, i32* @DRV_NAME, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %14, i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %4, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = call %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.lpass_data* %18, %struct.lpass_data** %5, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %6, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %23, align 8
  store %struct.lpass_pcm_data* %24, %struct.lpass_pcm_data** %7, align 8
  %25 = load %struct.lpass_data*, %struct.lpass_data** %5, align 8
  %26 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %25, i32 0, i32 1
  %27 = load %struct.lpass_variant*, %struct.lpass_variant** %26, align 8
  store %struct.lpass_variant* %27, %struct.lpass_variant** %8, align 8
  %28 = load %struct.lpass_variant*, %struct.lpass_variant** %8, align 8
  %29 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %7, align 8
  %30 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @LPAIF_DMACTL_REG(%struct.lpass_variant* %28, i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.lpass_data*, %struct.lpass_data** %5, align 8
  %37 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @LPAIF_DMACTL_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
