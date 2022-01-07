; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_dai_fmt_tr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_dai_fmt_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_FMT_TRANSMITTER = common dso_local global i32 0, align 4
@FSL_SAI_CR4_MF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR2_BCP = common dso_local global i32 0, align 4
@FSL_SAI_CR4_FSE = common dso_local global i32 0, align 4
@FSL_SAI_CR4_FSP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR2_BCD_MSTR = common dso_local global i32 0, align 4
@FSL_SAI_CR4_FSD_MSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @fsl_sai_set_dai_fmt_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_set_dai_fmt_tr(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_sai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = call %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.fsl_sai* %14, %struct.fsl_sai** %8, align 8
  %15 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %16 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FSL_FMT_TRANSMITTER, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %25 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @FSL_SAI_CR4_MF, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %65 [
    i32 134, label %36
    i32 131, label %45
    i32 136, label %49
    i32 135, label %58
    i32 128, label %64
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @FSL_SAI_CR4_FSE, align 4
  %41 = load i32, i32* @FSL_SAI_CR4_FSP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %68

45:                                               ; preds = %32
  %46 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %68

49:                                               ; preds = %32
  %50 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @FSL_SAI_CR4_FSE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %57 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %68

58:                                               ; preds = %32
  %59 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %63 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %68

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %32, %64
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %149

68:                                               ; preds = %58, %49, %45, %36
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %88 [
    i32 133, label %72
    i32 132, label %79
    i32 130, label %83
    i32 129, label %87
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %74 = load i32, i32* %11, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @FSL_SAI_CR4_FSP, align 4
  %77 = load i32, i32* %12, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %91

79:                                               ; preds = %68
  %80 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %91

83:                                               ; preds = %68
  %84 = load i32, i32* @FSL_SAI_CR4_FSP, align 4
  %85 = load i32, i32* %12, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %91

87:                                               ; preds = %68
  br label %91

88:                                               ; preds = %68
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %149

91:                                               ; preds = %87, %83, %79, %72
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %119 [
    i32 137, label %95
    i32 140, label %104
    i32 138, label %107
    i32 139, label %113
  ]

95:                                               ; preds = %91
  %96 = load i32, i32* @FSL_SAI_CR2_BCD_MSTR, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @FSL_SAI_CR4_FSD_MSTR, align 4
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %103 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %122

104:                                              ; preds = %91
  %105 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %106 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %122

107:                                              ; preds = %91
  %108 = load i32, i32* @FSL_SAI_CR2_BCD_MSTR, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %112 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %122

113:                                              ; preds = %91
  %114 = load i32, i32* @FSL_SAI_CR4_FSD_MSTR, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %118 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %122

119:                                              ; preds = %91
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %149

122:                                              ; preds = %113, %107, %104, %95
  %123 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %124 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @FSL_SAI_xCR2(i32 %126, i32 %127)
  %129 = load i32, i32* @FSL_SAI_CR2_BCP, align 4
  %130 = load i32, i32* @FSL_SAI_CR2_BCD_MSTR, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @regmap_update_bits(i32 %125, i32 %128, i32 %131, i32 %132)
  %134 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %135 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @FSL_SAI_xCR4(i32 %137, i32 %138)
  %140 = load i32, i32* @FSL_SAI_CR4_MF, align 4
  %141 = load i32, i32* @FSL_SAI_CR4_FSE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @FSL_SAI_CR4_FSP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @FSL_SAI_CR4_FSD_MSTR, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @regmap_update_bits(i32 %136, i32 %139, i32 %146, i32 %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %122, %119, %88, %65
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_xCR2(i32, i32) #1

declare dso_local i32 @FSL_SAI_xCR4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
