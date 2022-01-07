; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_trigger_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_trigger_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i32 }

@ESAI_xCR_xEIE_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_TE_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_RE_MASK = common dso_local global i32 0, align 4
@ESAI_xSMA_xS_MASK = common dso_local global i32 0, align 4
@ESAI_xSMB_xS_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_xFR = common dso_local global i32 0, align 4
@ESAI_xFCR_xFEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_esai*, i32)* @fsl_esai_trigger_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_esai_trigger_stop(%struct.fsl_esai* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_esai*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_esai* %0, %struct.fsl_esai** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @REG_ESAI_xCR(i32 %8)
  %10 = load i32, i32* @ESAI_xCR_xEIE_MASK, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %9, i32 %10, i32 0)
  %12 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @REG_ESAI_xCR(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ESAI_xCR_TE_MASK, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ESAI_xCR_RE_MASK, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @regmap_update_bits(i32 %14, i32 %16, i32 %24, i32 0)
  %26 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @REG_ESAI_xSMA(i32 %29)
  %31 = load i32, i32* @ESAI_xSMA_xS_MASK, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %30, i32 %31, i32 0)
  %33 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @REG_ESAI_xSMB(i32 %36)
  %38 = load i32, i32* @ESAI_xSMB_xS_MASK, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %37, i32 %38, i32 0)
  %40 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @REG_ESAI_xFCR(i32 %43)
  %45 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %46 = load i32, i32* @ESAI_xFCR_xFEN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %49 = call i32 @regmap_update_bits(i32 %42, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %51 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @REG_ESAI_xFCR(i32 %53)
  %55 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %54, i32 %55, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xCR(i32) #1

declare dso_local i32 @REG_ESAI_xSMA(i32) #1

declare dso_local i32 @REG_ESAI_xSMB(i32) #1

declare dso_local i32 @REG_ESAI_xFCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
