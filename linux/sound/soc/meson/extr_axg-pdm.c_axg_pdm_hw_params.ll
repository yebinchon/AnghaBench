; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_pdm = type { i32, i32 }

@PDM_CTRL_OUT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported sample width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PDM_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set system clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to set dclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid clock setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_pdm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_pdm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.axg_pdm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.axg_pdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.axg_pdm* %14, %struct.axg_pdm** %8, align 8
  %15 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %16 = call i32 @axg_pdm_get_os(%struct.axg_pdm* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_width(%struct.snd_pcm_hw_params* %19)
  switch i32 %20, label %24 [
    i32 24, label %21
    i32 32, label %23
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @PDM_CTRL_OUT_MODE, align 4
  store i32 %22, i32* %11, align 4
  br label %31

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %83

31:                                               ; preds = %23, %21
  %32 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %33 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PDM_CTRL, align 4
  %36 = load i32, i32* @PDM_CTRL_OUT_MODE, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @axg_pdm_set_sysclk(%struct.axg_pdm* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  br label %83

51:                                               ; preds = %31
  %52 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %53 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul i32 %55, %56
  %58 = call i32 @clk_set_rate(i32 %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %51
  %68 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %69 = call i32 @axg_pdm_set_sample_pointer(%struct.axg_pdm* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %67
  %79 = load %struct.axg_pdm*, %struct.axg_pdm** %8, align 8
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %81 = call i32 @params_channels(%struct.snd_pcm_hw_params* %80)
  %82 = call i32 @axg_pdm_set_channel_mask(%struct.axg_pdm* %79, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %72, %61, %45, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.axg_pdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @axg_pdm_get_os(%struct.axg_pdm*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @axg_pdm_set_sysclk(%struct.axg_pdm*, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @axg_pdm_set_sample_pointer(%struct.axg_pdm*) #1

declare dso_local i32 @axg_pdm_set_channel_mask(%struct.axg_pdm*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
