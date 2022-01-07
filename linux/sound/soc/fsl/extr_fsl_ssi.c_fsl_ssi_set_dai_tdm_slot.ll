; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_ssi = type { i32, i32, i64, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid slot width: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"slot number should be >= 2 in I2S or NET\0A\00", align 1
@REG_SSI_STCCR = common dso_local global i32 0, align 4
@SSI_SxCCR_DC_MASK = common dso_local global i32 0, align 4
@REG_SSI_SRCCR = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@REG_SSI_STMSK = common dso_local global i32 0, align 4
@REG_SSI_SRMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @fsl_ssi_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fsl_ssi*, align 8
  %13 = alloca %struct.regmap*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.fsl_ssi* %16, %struct.fsl_ssi** %12, align 8
  %17 = load %struct.fsl_ssi*, %struct.fsl_ssi** %12, align 8
  %18 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %17, i32 0, i32 3
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 24
  br i1 %28, label %29, label %37

29:                                               ; preds = %26, %23, %5
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %94

37:                                               ; preds = %26
  %38 = load %struct.fsl_ssi*, %struct.fsl_ssi** %12, align 8
  %39 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %94

52:                                               ; preds = %42, %37
  %53 = load %struct.regmap*, %struct.regmap** %13, align 8
  %54 = load i32, i32* @REG_SSI_STCCR, align 4
  %55 = load i32, i32* @SSI_SxCCR_DC_MASK, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @SSI_SxCCR_DC(i32 %56)
  %58 = call i32 @regmap_update_bits(%struct.regmap* %53, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.regmap*, %struct.regmap** %13, align 8
  %60 = load i32, i32* @REG_SSI_SRCCR, align 4
  %61 = load i32, i32* @SSI_SxCCR_DC_MASK, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @SSI_SxCCR_DC(i32 %62)
  %64 = call i32 @regmap_update_bits(%struct.regmap* %59, i32 %60, i32 %61, i32 %63)
  %65 = load %struct.regmap*, %struct.regmap** %13, align 8
  %66 = load i32, i32* @REG_SSI_SCR, align 4
  %67 = call i32 @regmap_read(%struct.regmap* %65, i32 %66, i32* %14)
  %68 = load %struct.regmap*, %struct.regmap** %13, align 8
  %69 = load i32, i32* @REG_SSI_SCR, align 4
  %70 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %71 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %72 = call i32 @regmap_update_bits(%struct.regmap* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.regmap*, %struct.regmap** %13, align 8
  %74 = load i32, i32* @REG_SSI_STMSK, align 4
  %75 = load i32, i32* %8, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @regmap_write(%struct.regmap* %73, i32 %74, i32 %76)
  %78 = load %struct.regmap*, %struct.regmap** %13, align 8
  %79 = load i32, i32* @REG_SSI_SRMSK, align 4
  %80 = load i32, i32* %9, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @regmap_write(%struct.regmap* %78, i32 %79, i32 %81)
  %83 = load %struct.regmap*, %struct.regmap** %13, align 8
  %84 = load i32, i32* @REG_SSI_SCR, align 4
  %85 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @regmap_update_bits(%struct.regmap* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.fsl_ssi*, %struct.fsl_ssi** %12, align 8
  %90 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.fsl_ssi*, %struct.fsl_ssi** %12, align 8
  %93 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %52, %45, %29
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @SSI_SxCCR_DC(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
