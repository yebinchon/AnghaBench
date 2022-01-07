; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i64*, i32, i64*, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_SAI_MCLK_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"ratio %d for freq %dHz based on clock %ldHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to derive required %cx rate: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@RX = common dso_local global i64 0, align 8
@FSL_SAI_CR2_MSEL_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR2_DIV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"best fit: clock id=%d, div=%d, deviation =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i64)* @fsl_sai_set_bclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_set_bclk(%struct.snd_soc_dai* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fsl_sai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = call %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %16)
  store %struct.fsl_sai* %17, %struct.fsl_sai** %8, align 8
  %18 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %19 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %25 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %244

29:                                               ; preds = %3
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %106, %29
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @FSL_SAI_MCLK_MAX, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %30
  %35 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %36 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @clk_get_rate(i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %106

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = udiv i64 %46, %47
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %7, align 8
  %52 = mul i64 %50, %51
  %53 = sub i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %58, %60
  %62 = icmp ult i64 %61, 1000
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %106

64:                                               ; preds = %57, %45
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %12, align 8
  %73 = urem i64 %72, 2
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load i64, i64* %12, align 8
  %77 = icmp uge i64 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = icmp ule i64 %79, 512
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = udiv i64 %82, 2
  store i64 %83, i64* %12, align 8
  br label %85

84:                                               ; preds = %78, %75, %64
  br label %106

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i64, i64* %12, align 8
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %94 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %13, align 8
  br label %101

101:                                              ; preds = %90, %85
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %109

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %84, %63, %44
  %107 = load i64, i64* %14, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %30

109:                                              ; preds = %104, %30
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 84, i32 82
  %120 = trunc i32 %119 to i8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 signext %120, i64 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %244

125:                                              ; preds = %109
  %126 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %127 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @TX, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %135 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %134, i32 0, i32 2
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @RX, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %133, %125
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %141
  %145 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %146 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @RX, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %144, %133
  %153 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %154 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @FSL_SAI_RCR2(i32 %156)
  %158 = load i32, i32* @FSL_SAI_CR2_MSEL_MASK, align 4
  %159 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %160 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @FSL_SAI_CR2_MSEL(i64 %165)
  %167 = call i32 @regmap_update_bits(i32 %155, i32 %157, i32 %158, i64 %166)
  %168 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %169 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @FSL_SAI_RCR2(i32 %171)
  %173 = load i32, i32* @FSL_SAI_CR2_DIV_MASK, align 4
  %174 = load i64, i64* %11, align 8
  %175 = sub i64 %174, 1
  %176 = call i32 @regmap_update_bits(i32 %170, i32 %172, i32 %173, i64 %175)
  br label %230

177:                                              ; preds = %144, %141
  %178 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %179 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @RX, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %187 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @TX, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185, %177
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %193
  %197 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %198 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %197, i32 0, i32 2
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @TX, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %229, label %204

204:                                              ; preds = %196, %185
  %205 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %206 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @FSL_SAI_TCR2(i32 %208)
  %210 = load i32, i32* @FSL_SAI_CR2_MSEL_MASK, align 4
  %211 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %212 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @FSL_SAI_CR2_MSEL(i64 %217)
  %219 = call i32 @regmap_update_bits(i32 %207, i32 %209, i32 %210, i64 %218)
  %220 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %221 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @FSL_SAI_TCR2(i32 %223)
  %225 = load i32, i32* @FSL_SAI_CR2_DIV_MASK, align 4
  %226 = load i64, i64* %11, align 8
  %227 = sub i64 %226, 1
  %228 = call i32 @regmap_update_bits(i32 %222, i32 %224, i32 %225, i64 %227)
  br label %229

229:                                              ; preds = %204, %196, %193
  br label %230

230:                                              ; preds = %229, %152
  %231 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %232 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %235 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %11, align 8
  %242 = load i64, i64* %13, align 8
  %243 = call i32 @dev_dbg(i32 %233, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %240, i64 %241, i64 %242)
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %230, %112, %28
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8 signext, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

declare dso_local i32 @FSL_SAI_RCR2(i32) #1

declare dso_local i64 @FSL_SAI_CR2_MSEL(i64) #1

declare dso_local i32 @FSL_SAI_TCR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
