; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.device* }
%struct.device = type { i32 }
%struct.fsl_micfil = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_MICFIL_CTRL2 = common dso_local global i32 0, align 4
@MICFIL_CTRL2_QSEL_MASK = common dso_local global i32 0, align 4
@MICFIL_MEDIUM_QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to set quality mode bits, reg 0x%X\0A\00", align 1
@REG_MICFIL_OUT_CTRL = common dso_local global i32 0, align 4
@REG_MICFIL_FIFO_CTRL = common dso_local global i32 0, align 4
@MICFIL_FIFO_CTRL_FIFOWMK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to set FIFOWMK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @fsl_micfil_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_micfil_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.fsl_micfil*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  %12 = call %struct.fsl_micfil* @dev_get_drvdata(%struct.device* %11)
  store %struct.fsl_micfil* %12, %struct.fsl_micfil** %4, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %17 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %20 = load i32, i32* @MICFIL_CTRL2_QSEL_MASK, align 4
  %21 = load i32, i32* @MICFIL_MEDIUM_QUALITY, align 4
  %22 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %78

30:                                               ; preds = %1
  %31 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %32 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @REG_MICFIL_OUT_CTRL, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 2004318071)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %46, %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %41 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 15, i32* %45, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %51 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %52 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %51, i32 0, i32 3
  %53 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %50, i32* null, i32* %52)
  %54 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %55 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MICFIL_FIFO_CTRL_FIFOWMK(i32 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %62 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @REG_MICFIL_FIFO_CTRL, align 4
  %65 = load i32, i32* @MICFIL_FIFO_CTRL_FIFOWMK_MASK, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %49
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %49
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %76 = load %struct.fsl_micfil*, %struct.fsl_micfil** %4, align 8
  %77 = call i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai* %75, %struct.fsl_micfil* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %70, %25
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.fsl_micfil* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

declare dso_local i32 @MICFIL_FIFO_CTRL_FIFOWMK(i32) #1

declare dso_local i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai*, %struct.fsl_micfil*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
