; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_divisor_cal.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_divisor_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"the ratio is out of range (2 ~ %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"the raio must be even if using upper divider\0A\00", align 1
@ESAI_xCCR_xPSR_BYPASS = common dso_local global i32 0, align 4
@ESAI_xCCR_xPSR_DIV8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to calculate proper divisors\0A\00", align 1
@ESAI_xCCR_xPSR_MASK = common dso_local global i32 0, align 4
@ESAI_xCCR_xPM_MASK = common dso_local global i32 0, align 4
@ESAI_xCCR_xFP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @fsl_esai_divisor_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_divisor_cal(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fsl_esai*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %22 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %21)
  store %struct.fsl_esai* %22, %struct.fsl_esai** %12, align 8
  store i32 999, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 16, i32 1
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %179

33:                                               ; preds = %29, %5
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %15, align 4
  %36 = mul nsw i32 4096, %35
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %33
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = mul nsw i32 4096, %45
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %193

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %193

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 256, %66
  %68 = icmp sle i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @ESAI_xCCR_xPSR_BYPASS, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @ESAI_xCCR_xPSR_DIV8, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %75, 256
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %14, align 4
  store i32 1, i32* %11, align 4
  br label %165

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 8
  %84 = mul nsw i32 %83, 256
  %85 = load i32, i32* %15, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sdiv i32 %86, 1000
  store i32 %87, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %151, %79
  %89 = load i32, i32* %19, align 4
  %90 = icmp sle i32 %89, 256
  br i1 %90, label %91, label %154

91:                                               ; preds = %88
  store i32 1, i32* %20, align 4
  br label %92

92:                                               ; preds = %147, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 8
  %101 = load i32, i32* %19, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %20, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i32 0, i32* %17, align 4
  br label %130

109:                                              ; preds = %96
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sdiv i32 %110, %111
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %17, align 4
  br label %129

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %16, align 4
  %121 = sdiv i32 %119, %120
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %17, align 4
  br label %128

127:                                              ; preds = %118
  br label %147

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %114
  br label %130

130:                                              ; preds = %129, %108
  %131 = load i32, i32* %17, align 4
  %132 = mul nsw i32 %131, 1000
  %133 = load i32, i32* %9, align 4
  %134 = sdiv i32 %132, %133
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %20, align 4
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %18, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %165

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %127
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %92

150:                                              ; preds = %92
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %88

154:                                              ; preds = %88
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %155, 999
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %159 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %193

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %145, %77
  %166 = load %struct.fsl_esai*, %struct.fsl_esai** %12, align 8
  %167 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @REG_ESAI_xCCR(i32 %169)
  %171 = load i32, i32* @ESAI_xCCR_xPSR_MASK, align 4
  %172 = load i32, i32* @ESAI_xCCR_xPM_MASK, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @ESAI_xCCR_xPM(i32 %175)
  %177 = or i32 %174, %176
  %178 = call i32 @regmap_update_bits(i32 %168, i32 %170, i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %165, %32
  %180 = load i32, i32* %15, align 4
  %181 = icmp sle i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %193

183:                                              ; preds = %179
  %184 = load %struct.fsl_esai*, %struct.fsl_esai** %12, align 8
  %185 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @REG_ESAI_xCCR(i32 %187)
  %189 = load i32, i32* @ESAI_xCCR_xFP_MASK, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @ESAI_xCCR_xFP(i32 %190)
  %192 = call i32 @regmap_update_bits(i32 %186, i32 %188, i32 %189, i32 %191)
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %183, %182, %157, %54, %41
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xCCR(i32) #1

declare dso_local i32 @ESAI_xCCR_xPM(i32) #1

declare dso_local i32 @ESAI_xCCR_xFP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
