; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32*, i32*, i64*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"failed to derive required SCK%c rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"the ratio is out of range (1 ~ 16)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @fsl_esai_set_bclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_set_bclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_esai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.fsl_esai* %14, %struct.fsl_esai** %8, align 8
  %15 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %16 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %26 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %3
  %30 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %31 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29, %3
  store i32 0, i32* %4, align 4
  br label %137

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %10, align 4
  br label %66

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %10, align 4
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sdiv i32 %70, %71
  %73 = icmp slt i32 %72, 1000
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 84, i32 82
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %137

85:                                               ; preds = %69, %66
  %86 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %87 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 16
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97, %94
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %137

107:                                              ; preds = %97, %85
  %108 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %112 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %122

120:                                              ; preds = %107
  %121 = load i32, i32* %11, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = phi i32 [ 0, %119 ], [ %121, %120 ]
  %124 = call i32 @fsl_esai_divisor_cal(%struct.snd_soc_dai* %108, i32 %109, i32 %110, i32 1, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %4, align 4
  br label %137

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %132 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %129, %127, %100, %74, %39
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fsl_esai_divisor_cal(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
