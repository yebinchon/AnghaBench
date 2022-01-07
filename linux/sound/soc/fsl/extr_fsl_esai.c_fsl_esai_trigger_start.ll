; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_trigger_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_trigger_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i64*, i32, i32, i32, i32 }

@ESAI_xFCR_xFEN_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_xFEN = common dso_local global i32 0, align 4
@REG_ESAI_ETDR = common dso_local global i32 0, align 4
@ESAI_xCR_TE_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_RE_MASK = common dso_local global i32 0, align 4
@ESAI_xSMB_xS_MASK = common dso_local global i32 0, align 4
@ESAI_xSMA_xS_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_xEIE_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_xEIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_esai*, i32)* @fsl_esai_trigger_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_esai_trigger_start(%struct.fsl_esai* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_esai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsl_esai* %0, %struct.fsl_esai** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DIV_ROUND_UP(i64 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @REG_ESAI_xFCR(i32 %24)
  %26 = load i32, i32* @ESAI_xFCR_xFEN_MASK, align 4
  %27 = load i32, i32* @ESAI_xFCR_xFEN, align 4
  %28 = call i32 @regmap_update_bits(i32 %23, i32 %25, i32 %26, i32 %27)
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp slt i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %40 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @REG_ESAI_ETDR, align 4
  %43 = call i32 @regmap_write(i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %29

47:                                               ; preds = %36
  %48 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @REG_ESAI_xCR(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ESAI_xCR_TE_MASK, align 4
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @ESAI_xCR_RE_MASK, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ESAI_xCR_TE(i32 %64)
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ESAI_xCR_RE(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ %65, %63 ], [ %68, %66 ]
  %71 = call i32 @regmap_update_bits(i32 %50, i32 %52, i32 %60, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %76 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %80 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  store i32 %83, i32* %8, align 4
  %84 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %85 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @REG_ESAI_xSMB(i32 %87)
  %89 = load i32, i32* @ESAI_xSMB_xS_MASK, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ESAI_xSMB_xS(i32 %90)
  %92 = call i32 @regmap_update_bits(i32 %86, i32 %88, i32 %89, i32 %91)
  %93 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %94 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @REG_ESAI_xSMA(i32 %96)
  %98 = load i32, i32* @ESAI_xSMA_xS_MASK, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ESAI_xSMA_xS(i32 %99)
  %101 = call i32 @regmap_update_bits(i32 %95, i32 %97, i32 %98, i32 %100)
  %102 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %103 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @REG_ESAI_xCR(i32 %105)
  %107 = load i32, i32* @ESAI_xCR_xEIE_MASK, align 4
  %108 = load i32, i32* @ESAI_xCR_xEIE, align 4
  %109 = call i32 @regmap_update_bits(i32 %104, i32 %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xFCR(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xCR(i32) #1

declare dso_local i32 @ESAI_xCR_TE(i32) #1

declare dso_local i32 @ESAI_xCR_RE(i32) #1

declare dso_local i32 @REG_ESAI_xSMB(i32) #1

declare dso_local i32 @ESAI_xSMB_xS(i32) #1

declare dso_local i32 @REG_ESAI_xSMA(i32) #1

declare dso_local i32 @ESAI_xSMA_xS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
