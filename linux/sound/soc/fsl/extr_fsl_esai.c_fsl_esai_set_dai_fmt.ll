; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_xFSR = common dso_local global i32 0, align 4
@ESAI_xCCR_xFSP = common dso_local global i32 0, align 4
@ESAI_xCCR_xCKP = common dso_local global i32 0, align 4
@ESAI_xCCR_xHCKP = common dso_local global i32 0, align 4
@ESAI_xCR_xWA = common dso_local global i32 0, align 4
@ESAI_xCR_xFSL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ESAI_xCCR_xCKD = common dso_local global i32 0, align 4
@ESAI_xCCR_xFSD = common dso_local global i32 0, align 4
@REG_ESAI_TCR = common dso_local global i32 0, align 4
@REG_ESAI_RCR = common dso_local global i32 0, align 4
@REG_ESAI_TCCR = common dso_local global i32 0, align 4
@REG_ESAI_RCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @fsl_esai_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_esai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.fsl_esai* %11, %struct.fsl_esai** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %61 [
    i32 134, label %15
    i32 131, label %26
    i32 128, label %32
    i32 136, label %41
    i32 135, label %52
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @ESAI_xCR_xFSR, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @ESAI_xCCR_xFSP, align 4
  %20 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %28 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %64

32:                                               ; preds = %2
  %33 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %34 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @ESAI_xCR_xWA, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %64

41:                                               ; preds = %2
  %42 = load i32, i32* @ESAI_xCR_xFSL, align 4
  %43 = load i32, i32* @ESAI_xCR_xFSR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %48 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %64

52:                                               ; preds = %2
  %53 = load i32, i32* @ESAI_xCR_xFSL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %57 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %64

61:                                               ; preds = %2
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %159

64:                                               ; preds = %52, %41, %32, %26, %15
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %87 [
    i32 129, label %68
    i32 132, label %69
    i32 130, label %75
    i32 133, label %79
  ]

68:                                               ; preds = %64
  br label %90

69:                                               ; preds = %64
  %70 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %71 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %90

75:                                               ; preds = %64
  %76 = load i32, i32* @ESAI_xCCR_xFSP, align 4
  %77 = load i32, i32* %8, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %90

79:                                               ; preds = %64
  %80 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %81 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ESAI_xCCR_xFSP, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %90

87:                                               ; preds = %64
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %159

90:                                               ; preds = %79, %75, %69, %68
  %91 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %113 [
    i32 140, label %96
    i32 138, label %99
    i32 139, label %103
    i32 137, label %107
  ]

96:                                               ; preds = %90
  %97 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %98 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %116

99:                                               ; preds = %90
  %100 = load i32, i32* @ESAI_xCCR_xCKD, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %116

103:                                              ; preds = %90
  %104 = load i32, i32* @ESAI_xCCR_xFSD, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %116

107:                                              ; preds = %90
  %108 = load i32, i32* @ESAI_xCCR_xFSD, align 4
  %109 = load i32, i32* @ESAI_xCCR_xCKD, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %116

113:                                              ; preds = %90
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %159

116:                                              ; preds = %107, %103, %99, %96
  %117 = load i32, i32* @ESAI_xCR_xFSL, align 4
  %118 = load i32, i32* @ESAI_xCR_xFSR, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ESAI_xCR_xWA, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %123 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @REG_ESAI_TCR, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %130 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @REG_ESAI_RCR, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @ESAI_xCCR_xCKP, align 4
  %137 = load i32, i32* @ESAI_xCCR_xHCKP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @ESAI_xCCR_xFSP, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @ESAI_xCCR_xFSD, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @ESAI_xCCR_xCKD, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %9, align 4
  %145 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %146 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @REG_ESAI_TCCR, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.fsl_esai*, %struct.fsl_esai** %6, align 8
  %153 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @REG_ESAI_RCCR, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @regmap_update_bits(i32 %154, i32 %155, i32 %156, i32 %157)
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %116, %113, %87, %61
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
