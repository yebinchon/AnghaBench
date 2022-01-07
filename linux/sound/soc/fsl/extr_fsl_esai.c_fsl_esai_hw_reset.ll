; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i32 }

@REG_ESAI_TFCR = common dso_local global i32 0, align 4
@REG_ESAI_RFCR = common dso_local global i32 0, align 4
@ESAI_xFCR_xFEN = common dso_local global i32 0, align 4
@REG_ESAI_TCR = common dso_local global i32 0, align 4
@ESAI_xCR_xPR_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_xPR = common dso_local global i32 0, align 4
@REG_ESAI_RCR = common dso_local global i32 0, align 4
@REG_ESAI_PRRC = common dso_local global i32 0, align 4
@ESAI_PRRC_PDC_MASK = common dso_local global i32 0, align 4
@ESAI_GPIO = common dso_local global i32 0, align 4
@REG_ESAI_PCRC = common dso_local global i32 0, align 4
@ESAI_PCRC_PC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fsl_esai_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_esai_hw_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fsl_esai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.fsl_esai*
  store %struct.fsl_esai* %10, %struct.fsl_esai** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REG_ESAI_TFCR, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  %16 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REG_ESAI_RFCR, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %8)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ESAI_xFCR_xFEN, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ESAI_xFCR_xFEN, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @fsl_esai_trigger_stop(%struct.fsl_esai* %33, i32 %34)
  %36 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @fsl_esai_trigger_stop(%struct.fsl_esai* %36, i32 %37)
  %39 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %40 = call i32 @fsl_esai_hw_init(%struct.fsl_esai* %39)
  %41 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @REG_ESAI_TCR, align 4
  %45 = load i32, i32* @ESAI_xCR_xPR_MASK, align 4
  %46 = load i32, i32* @ESAI_xCR_xPR, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @REG_ESAI_RCR, align 4
  %52 = load i32, i32* @ESAI_xCR_xPR_MASK, align 4
  %53 = load i32, i32* @ESAI_xCR_xPR, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %56 = call i32 @fsl_esai_register_restore(%struct.fsl_esai* %55)
  %57 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %58 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @REG_ESAI_TCR, align 4
  %61 = load i32, i32* @ESAI_xCR_xPR_MASK, align 4
  %62 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %64 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @REG_ESAI_RCR, align 4
  %67 = load i32, i32* @ESAI_xCR_xPR_MASK, align 4
  %68 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @REG_ESAI_PRRC, align 4
  %73 = load i32, i32* @ESAI_PRRC_PDC_MASK, align 4
  %74 = load i32, i32* @ESAI_GPIO, align 4
  %75 = call i32 @ESAI_PRRC_PDC(i32 %74)
  %76 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %75)
  %77 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @REG_ESAI_PCRC, align 4
  %81 = load i32, i32* @ESAI_PCRC_PC_MASK, align 4
  %82 = load i32, i32* @ESAI_GPIO, align 4
  %83 = call i32 @ESAI_PCRC_PC(i32 %82)
  %84 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %1
  %91 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @fsl_esai_trigger_start(%struct.fsl_esai* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %1
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @fsl_esai_trigger_start(%struct.fsl_esai* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %94
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @fsl_esai_trigger_stop(%struct.fsl_esai*, i32) #1

declare dso_local i32 @fsl_esai_hw_init(%struct.fsl_esai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @fsl_esai_register_restore(%struct.fsl_esai*) #1

declare dso_local i32 @ESAI_PRRC_PDC(i32) #1

declare dso_local i32 @ESAI_PCRC_PC(i32) #1

declare dso_local i32 @fsl_esai_trigger_start(%struct.fsl_esai*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
