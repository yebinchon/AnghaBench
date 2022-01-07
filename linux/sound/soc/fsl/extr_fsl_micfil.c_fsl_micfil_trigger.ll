; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_micfil_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_micfil = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to soft reset\0A\00", align 1
@REG_MICFIL_CTRL1 = common dso_local global i32 0, align 4
@MICFIL_CTRL1_DISEL_MASK = common dso_local global i32 0, align 4
@MICFIL_CTRL1_DISEL_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to update DISEL bits\0A\00", align 1
@MICFIL_CTRL1_PDMIEN_MASK = common dso_local global i32 0, align 4
@MICFIL_CTRL1_PDMIEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to enable the module\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsl_micfil_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_micfil_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_micfil*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.fsl_micfil* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.fsl_micfil* %12, %struct.fsl_micfil** %8, align 8
  %13 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %14 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %86 [
    i32 130, label %18
    i32 131, label %18
    i32 132, label %18
    i32 129, label %57
    i32 128, label %57
    i32 133, label %57
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = call i32 @fsl_micfil_reset(%struct.device* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %18
  %28 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %29 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %32 = load i32, i32* @MICFIL_CTRL1_DISEL_MASK, align 4
  %33 = load i32, i32* @MICFIL_CTRL1_DISEL_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %9, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %27
  %43 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %44 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %47 = load i32, i32* @MICFIL_CTRL1_PDMIEN_MASK, align 4
  %48 = load i32, i32* @MICFIL_CTRL1_PDMIEN, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %90

56:                                               ; preds = %42
  br label %89

57:                                               ; preds = %3, %3, %3
  %58 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %59 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %62 = load i32, i32* @MICFIL_CTRL1_PDMIEN_MASK, align 4
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %90

70:                                               ; preds = %57
  %71 = load %struct.fsl_micfil*, %struct.fsl_micfil** %8, align 8
  %72 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %75 = load i32, i32* @MICFIL_CTRL1_DISEL_MASK, align 4
  %76 = load i32, i32* @MICFIL_CTRL1_DISEL_SHIFT, align 4
  %77 = shl i32 0, %76
  %78 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %70
  br label %89

86:                                               ; preds = %3
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %85, %56
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86, %81, %66, %52, %38, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.fsl_micfil* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @fsl_micfil_reset(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
