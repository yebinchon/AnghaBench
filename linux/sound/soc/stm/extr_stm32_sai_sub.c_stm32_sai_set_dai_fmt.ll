; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"fmt %x\0A\00", align 1
@SAI_XCR1_NODIV = common dso_local global i32 0, align 4
@SAI_XCR1_PRTCFG_MASK = common dso_local global i32 0, align 4
@SAI_SPDIF_PROTOCOL = common dso_local global i32 0, align 4
@SAI_FREE_PROTOCOL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SAI_XCR1_CKSTR = common dso_local global i32 0, align 4
@SAI_XFRCR_FSOFF = common dso_local global i32 0, align 4
@SAI_XFRCR_FSDEF = common dso_local global i32 0, align 4
@SAI_XFRCR_FSPOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported protocol %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported strobing %#x\0A\00", align 1
@STM_SAI_FRCR_REGX = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SAI_XCR1_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported mode %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Synchronized SAI configured as slave\0A\00", align 1
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to update CR1 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @stm32_sai_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_sai_sub_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.stm32_sai_sub_data* %13, %struct.stm32_sai_sub_data** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @SAI_XCR1_NODIV, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @SAI_XCR1_NODIV, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @SAI_XCR1_PRTCFG_MASK, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %25 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @SAI_SPDIF_PROTOCOL, align 4
  %29 = call i32 @SAI_XCR1_PRTCFG_SET(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %176

32:                                               ; preds = %2
  %33 = load i32, i32* @SAI_FREE_PROTOCOL, align 4
  %34 = call i32 @SAI_XCR1_PRTCFG_SET(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %71 [
    i32 134, label %40
    i32 130, label %49
    i32 131, label %55
    i32 136, label %61
    i32 135, label %67
  ]

40:                                               ; preds = %32
  %41 = load i32, i32* @SAI_XCR1_CKSTR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @SAI_XFRCR_FSOFF, align 4
  %45 = load i32, i32* @SAI_XFRCR_FSDEF, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %81

49:                                               ; preds = %32
  %50 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %51 = load i32, i32* @SAI_XFRCR_FSDEF, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %81

55:                                               ; preds = %32
  %56 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %57 = load i32, i32* @SAI_XFRCR_FSDEF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %81

61:                                               ; preds = %32
  %62 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %63 = load i32, i32* @SAI_XFRCR_FSOFF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %81

67:                                               ; preds = %32
  %68 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %81

71:                                               ; preds = %32
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %77 = and i32 %75, %76
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %196

81:                                               ; preds = %67, %61, %55, %49, %40
  %82 = load i32, i32* @SAI_XCR1_CKSTR, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %86 = load i32, i32* @SAI_XFRCR_FSOFF, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SAI_XFRCR_FSDEF, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %111 [
    i32 128, label %95
    i32 132, label %96
    i32 129, label %100
    i32 133, label %104
  ]

95:                                               ; preds = %81
  br label %121

96:                                               ; preds = %81
  %97 = load i32, i32* @SAI_XCR1_CKSTR, align 4
  %98 = load i32, i32* %7, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %121

100:                                              ; preds = %81
  %101 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %102 = load i32, i32* %8, align 4
  %103 = xor i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %121

104:                                              ; preds = %81
  %105 = load i32, i32* @SAI_XCR1_CKSTR, align 4
  %106 = load i32, i32* %7, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %109 = load i32, i32* %8, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %121

111:                                              ; preds = %81
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %113 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %117 = and i32 %115, %116
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %196

121:                                              ; preds = %104, %100, %96, %95
  %122 = load i32, i32* @SAI_XCR1_CKSTR, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @SAI_XFRCR_FSPOL, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %129 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @STM_SAI_FRCR_REGX, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %137 = and i32 %135, %136
  switch i32 %137, label %147 [
    i32 138, label %138
    i32 137, label %144
  ]

138:                                              ; preds = %121
  %139 = load i32, i32* @SAI_XCR1_SLAVE, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %143 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %157

144:                                              ; preds = %121
  %145 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %146 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %157

147:                                              ; preds = %121
  %148 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %149 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %153 = and i32 %151, %152
  %154 = call i32 (i32, i8*, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %196

157:                                              ; preds = %144, %138
  %158 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %159 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %164 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %167 = load i32, i32* @SAI_XCR1_SLAVE, align 4
  %168 = load i32, i32* %7, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %7, align 4
  %170 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %171 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %162, %157
  %173 = load i32, i32* @SAI_XCR1_SLAVE, align 4
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %172, %27
  %177 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %178 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @regmap_update_bits(i32 %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %176
  %187 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %188 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @dev_err(i32 %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %3, align 4
  br label %196

192:                                              ; preds = %176
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %195 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %192, %186, %147, %111, %71
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @SAI_XCR1_PRTCFG_SET(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
