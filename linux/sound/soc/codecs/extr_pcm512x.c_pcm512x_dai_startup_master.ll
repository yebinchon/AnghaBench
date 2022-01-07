; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_dai_startup_master.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_dai_startup_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.device*, %struct.snd_soc_component* }
%struct.device = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32, i64 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, %struct.snd_ratnum* }
%struct.snd_ratnum = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Need SCLK for master mode: %ld\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@pcm512x_hw_rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FRAME_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pcm512x_dai_startup_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_dai_startup_master(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.pcm512x_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.snd_pcm_hw_constraint_ratnums*, align 8
  %10 = alloca %struct.snd_ratnum*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.pcm512x_priv* %15, %struct.pcm512x_priv** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %20 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %27 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  %30 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %95

35:                                               ; preds = %2
  %36 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %37 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %45 = load i32, i32* @pcm512x_hw_rule_rate, align 4
  %46 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %47 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %48 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %49 = call i32 @snd_pcm_hw_rule_add(i32 %43, i32 0, i32 %44, i32 %45, %struct.pcm512x_priv* %46, i32 %47, i32 %48, i32 -1)
  store i32 %49, i32* %3, align 4
  br label %95

50:                                               ; preds = %35
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kzalloc(%struct.device* %51, i32 16, i32 %52)
  %54 = bitcast i8* %53 to %struct.snd_pcm_hw_constraint_ratnums*
  store %struct.snd_pcm_hw_constraint_ratnums* %54, %struct.snd_pcm_hw_constraint_ratnums** %9, align 8
  %55 = load %struct.snd_pcm_hw_constraint_ratnums*, %struct.snd_pcm_hw_constraint_ratnums** %9, align 8
  %56 = icmp ne %struct.snd_pcm_hw_constraint_ratnums* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %95

60:                                               ; preds = %50
  %61 = load %struct.snd_pcm_hw_constraint_ratnums*, %struct.snd_pcm_hw_constraint_ratnums** %9, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ratnums, %struct.snd_pcm_hw_constraint_ratnums* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @devm_kzalloc(%struct.device* %63, i32 16, i32 %64)
  %66 = bitcast i8* %65 to %struct.snd_ratnum*
  store %struct.snd_ratnum* %66, %struct.snd_ratnum** %10, align 8
  %67 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %68 = icmp ne %struct.snd_ratnum* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %95

72:                                               ; preds = %60
  %73 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %74 = load %struct.snd_pcm_hw_constraint_ratnums*, %struct.snd_pcm_hw_constraint_ratnums** %9, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ratnums, %struct.snd_pcm_hw_constraint_ratnums* %74, i32 0, i32 1
  store %struct.snd_ratnum* %73, %struct.snd_ratnum** %75, align 8
  %76 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %77 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @clk_get_rate(i32 %78)
  %80 = sdiv i32 %79, 64
  %81 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %82 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %84 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %86 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %85, i32 0, i32 2
  store i32 128, i32* %86, align 4
  %87 = load %struct.snd_ratnum*, %struct.snd_ratnum** %10, align 8
  %88 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %93 = load %struct.snd_pcm_hw_constraint_ratnums*, %struct.snd_pcm_hw_constraint_ratnums** %9, align 8
  %94 = call i32 @snd_pcm_hw_constraint_ratnums(i32 %91, i32 0, i32 %92, %struct.snd_pcm_hw_constraint_ratnums* %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %72, %69, %57, %40, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.pcm512x_priv*, i32, i32, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(i32, i32, i32, %struct.snd_pcm_hw_constraint_ratnums*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
