; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32, i32, %struct.arizona_pdata }
%struct.arizona_pdata = type { i32*, i32*, i32*, i32*, i64* }

@ARIZONA_MAX_OUTPUT = common dso_local global i32 0, align 4
@ARIZONA_OUT1_MONO = common dso_local global i32 0, align 4
@ARIZONA_OUTPUT_PATH_CONFIG_1L = common dso_local global i64 0, align 8
@ARIZONA_MAX_PDM_SPK = common dso_local global i32 0, align 4
@ARIZONA_PDM_SPK1_CTRL_1 = common dso_local global i64 0, align 8
@ARIZONA_SPK1_MUTE_ENDIAN_MASK = common dso_local global i32 0, align 4
@ARIZONA_SPK1_MUTE_SEQ1_MASK = common dso_local global i32 0, align 4
@ARIZONA_PDM_SPK1_CTRL_2 = common dso_local global i64 0, align 8
@ARIZONA_SPK1_FMT_MASK = common dso_local global i32 0, align 4
@ARIZONA_MAX_INPUT = common dso_local global i32 0, align 4
@ARIZONA_IN1_DMIC_SUP_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_INMODE_DMIC = common dso_local global i32 0, align 4
@ARIZONA_IN1_MODE_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_ADC_DIGITAL_VOLUME_1L = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_SE_MASK = common dso_local global i32 0, align 4
@ARIZONA_INMODE_SE = common dso_local global i32 0, align 4
@ARIZONA_IN1L_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_ADC_DIGITAL_VOLUME_1R = common dso_local global i32 0, align 4
@ARIZONA_IN1R_SRC_SE_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1R_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_IN1_DMIC_SUP_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1_SINGLE_ENDED_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_IN1_SINGLE_ENDED_MASK = common dso_local global i32 0, align 4
@ARIZONA_IN1L_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_common(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca %struct.arizona_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %7 = load %struct.arizona*, %struct.arizona** %2, align 8
  %8 = getelementptr inbounds %struct.arizona, %struct.arizona* %7, i32 0, i32 3
  store %struct.arizona_pdata* %8, %struct.arizona_pdata** %3, align 8
  %9 = load %struct.arizona*, %struct.arizona** %2, align 8
  %10 = getelementptr inbounds %struct.arizona, %struct.arizona* %9, i32 0, i32 2
  %11 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ARIZONA_MAX_OUTPUT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %17, i32 0, i32 4
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @ARIZONA_OUT1_MONO, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load %struct.arizona*, %struct.arizona** %2, align 8
  %30 = getelementptr inbounds %struct.arizona, %struct.arizona* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @ARIZONA_OUTPUT_PATH_CONFIG_1L, align 8
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* @ARIZONA_OUT1_MONO, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @regmap_update_bits(i32 %31, i64 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %105, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ARIZONA_MAX_PDM_SPK, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %50 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load %struct.arizona*, %struct.arizona** %2, align 8
  %59 = getelementptr inbounds %struct.arizona, %struct.arizona* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @ARIZONA_PDM_SPK1_CTRL_1, align 8
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load i32, i32* @ARIZONA_SPK1_MUTE_ENDIAN_MASK, align 4
  %67 = load i32, i32* @ARIZONA_SPK1_MUTE_SEQ1_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %70 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_update_bits(i32 %60, i64 %65, i32 %68, i32 %75)
  br label %77

77:                                               ; preds = %57, %48
  %78 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %79 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %77
  %87 = load %struct.arizona*, %struct.arizona** %2, align 8
  %88 = getelementptr inbounds %struct.arizona, %struct.arizona* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* @ARIZONA_PDM_SPK1_CTRL_2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load i32, i32* @ARIZONA_SPK1_FMT_MASK, align 4
  %96 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %97 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regmap_update_bits(i32 %89, i64 %94, i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %86, %77
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %44

108:                                              ; preds = %44
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %222, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @ARIZONA_MAX_INPUT, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %225

113:                                              ; preds = %109
  %114 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %115 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ARIZONA_IN1_DMIC_SUP_SHIFT, align 4
  %122 = shl i32 %120, %121
  store i32 %122, i32* %4, align 4
  %123 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %124 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ARIZONA_INMODE_DMIC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %113
  %134 = load i32, i32* @ARIZONA_IN1_MODE_SHIFT, align 4
  %135 = shl i32 1, %134
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %113
  %139 = load %struct.arizona*, %struct.arizona** %2, align 8
  %140 = getelementptr inbounds %struct.arizona, %struct.arizona* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %188 [
    i32 128, label %142
    i32 129, label %142
  ]

142:                                              ; preds = %138, %138
  %143 = load %struct.arizona*, %struct.arizona** %2, align 8
  %144 = getelementptr inbounds %struct.arizona, %struct.arizona* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ARIZONA_ADC_DIGITAL_VOLUME_1L, align 4
  %147 = load i32, i32* %6, align 4
  %148 = mul nsw i32 %147, 8
  %149 = add nsw i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* @ARIZONA_IN1L_SRC_SE_MASK, align 4
  %152 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %153 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ARIZONA_INMODE_SE, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @ARIZONA_IN1L_SRC_SE_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = call i32 @regmap_update_bits(i32 %145, i64 %150, i32 %151, i32 %162)
  %164 = load %struct.arizona*, %struct.arizona** %2, align 8
  %165 = getelementptr inbounds %struct.arizona, %struct.arizona* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ARIZONA_ADC_DIGITAL_VOLUME_1R, align 4
  %168 = load i32, i32* %6, align 4
  %169 = mul nsw i32 %168, 8
  %170 = add nsw i32 %167, %169
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* @ARIZONA_IN1R_SRC_SE_MASK, align 4
  %173 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %174 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ARIZONA_INMODE_SE, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @ARIZONA_IN1R_SRC_SE_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = call i32 @regmap_update_bits(i32 %166, i64 %171, i32 %172, i32 %183)
  %185 = load i32, i32* @ARIZONA_IN1_DMIC_SUP_MASK, align 4
  %186 = load i32, i32* @ARIZONA_IN1_MODE_MASK, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %5, align 4
  br label %210

188:                                              ; preds = %138
  %189 = load %struct.arizona_pdata*, %struct.arizona_pdata** %3, align 8
  %190 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @ARIZONA_INMODE_SE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %188
  %200 = load i32, i32* @ARIZONA_IN1_SINGLE_ENDED_SHIFT, align 4
  %201 = shl i32 1, %200
  %202 = load i32, i32* %4, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %199, %188
  %205 = load i32, i32* @ARIZONA_IN1_DMIC_SUP_MASK, align 4
  %206 = load i32, i32* @ARIZONA_IN1_MODE_MASK, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @ARIZONA_IN1_SINGLE_ENDED_MASK, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %204, %142
  %211 = load %struct.arizona*, %struct.arizona** %2, align 8
  %212 = getelementptr inbounds %struct.arizona, %struct.arizona* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* @ARIZONA_IN1L_CONTROL, align 8
  %215 = load i32, i32* %6, align 4
  %216 = mul nsw i32 %215, 8
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @regmap_update_bits(i32 %213, i64 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %210
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %109

225:                                              ; preds = %109
  ret i32 0
}

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
