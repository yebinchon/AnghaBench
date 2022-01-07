; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_micfil = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@REG_MICFIL_CTRL1 = common dso_local global i32 0, align 4
@MICFIL_CTRL1_PDMIEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to disable the module\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to enable channels %d, reg 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set clock parameters [%d]\0A\00", align 1
@MICFIL_DMA_MAXBURST_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @fsl_micfil_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_micfil_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_micfil*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.fsl_micfil* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.fsl_micfil* %14, %struct.fsl_micfil** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_channels(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %20 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %11, align 8
  %23 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %24 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %27 = load i32, i32* @MICFIL_CTRL1_PDMIEN_MASK, align 4
  %28 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %11, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 255, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %35
  %53 = load %struct.device*, %struct.device** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @fsl_set_clock_params(%struct.device* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.device*, %struct.device** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MICFIL_DMA_MAXBURST_RX, align 4
  %66 = mul i32 %64, %65
  %67 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %68 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %58, %46, %31
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.fsl_micfil* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @fsl_set_clock_params(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
