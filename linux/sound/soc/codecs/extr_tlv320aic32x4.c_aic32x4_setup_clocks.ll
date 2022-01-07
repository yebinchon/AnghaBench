; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.clk_bulk_data = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nadc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"madc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ndac\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mdac\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bdiv\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Sampling rate not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AIC32X4_MAX_DOSR_FREQ = common dso_local global i32 0, align 4
@AIC32X4_MIN_DOSR_FREQ = common dso_local global i32 0, align 4
@AIC32X4_MAX_CODEC_CLKIN_FREQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Could not set clocks to support sample rate.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @aic32x4_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_setup_clocks(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca [6 x %struct.clk_bulk_data], align 16
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = bitcast [6 x %struct.clk_bulk_data]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 96, i1 false)
  %25 = bitcast i8* %24 to [6 x %struct.clk_bulk_data]*
  %26 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 1
  %29 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 2
  %31 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 3
  %33 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %33, align 16
  %34 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 4
  %35 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %35, align 16
  %36 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %25, i32 0, i32 5
  %37 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %37, align 16
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(%struct.clk_bulk_data* %41)
  %43 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 0
  %44 = call i32 @devm_clk_bulk_get(i32 %40, i32 %42, %struct.clk_bulk_data* %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %22, align 4
  store i32 %48, i32* %3, align 4
  br label %236

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = icmp ule i32 %50, 48000
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  store i32 128, i32* %6, align 4
  store i32 6, i32* %8, align 4
  store i32 8, i32* %9, align 4
  store i32 8, i32* %17, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %54 = call i32 @aic32x4_set_processing_blocks(%struct.snd_soc_component* %53, i32 1, i32 1)
  br label %76

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ule i32 %56, 96000
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  store i32 64, i32* %6, align 4
  store i32 6, i32* %8, align 4
  store i32 8, i32* %9, align 4
  store i32 4, i32* %17, align 4
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %60 = call i32 @aic32x4_set_processing_blocks(%struct.snd_soc_component* %59, i32 1, i32 9)
  br label %75

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 192000
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  store i32 32, i32* %6, align 4
  store i32 3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 2, i32* %17, align 4
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %66 = call i32 @aic32x4_set_processing_blocks(%struct.snd_soc_component* %65, i32 13, i32 19)
  br label %74

67:                                               ; preds = %61
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %236

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 32, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @DIV_ROUND_UP(i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @AIC32X4_MAX_DOSR_FREQ, align 4
  %82 = load i32, i32* %5, align 4
  %83 = udiv i32 %81, %82
  %84 = load i32, i32* %17, align 4
  %85 = udiv i32 %83, %84
  %86 = load i32, i32* %17, align 4
  %87 = mul i32 %85, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* @AIC32X4_MIN_DOSR_FREQ, align 4
  %89 = load i32, i32* %5, align 4
  %90 = udiv i32 %88, %89
  %91 = load i32, i32* %17, align 4
  %92 = udiv i32 %90, %91
  %93 = load i32, i32* %17, align 4
  %94 = mul i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* @AIC32X4_MAX_CODEC_CLKIN_FREQ, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = mul i32 %98, %99
  %101 = udiv i32 %95, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %226, %76
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %229

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = mul i32 %111, %112
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %20, align 8
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %221, %106
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %225

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = mul nsw i32 32, %121
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @DIV_ROUND_UP(i32 %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* @AIC32X4_MAX_CODEC_CLKIN_FREQ, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %5, align 4
  %130 = mul i32 %128, %129
  %131 = udiv i32 %125, %130
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %217, %120
  %134 = load i32, i32* %12, align 4
  %135 = icmp sle i32 %134, 128
  br i1 %135, label %136, label %220

136:                                              ; preds = %133
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %213, %136
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %216

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %5, align 4
  %148 = mul i32 %146, %147
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %21, align 8
  %150 = load i64, i64* %21, align 8
  %151 = load i64, i64* %20, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %212

153:                                              ; preds = %141
  %154 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 0
  %155 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %21, align 8
  %158 = call i64 @clk_round_rate(i32 %156, i64 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %213

161:                                              ; preds = %153
  %162 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 0
  %163 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %21, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @clk_set_rate(i32 %164, i32 %166)
  %168 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 1
  %169 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %6, align 4
  %173 = mul i32 %171, %172
  %174 = load i32, i32* %10, align 4
  %175 = mul i32 %173, %174
  %176 = call i32 @clk_set_rate(i32 %170, i32 %175)
  %177 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 2
  %178 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %6, align 4
  %182 = mul i32 %180, %181
  %183 = call i32 @clk_set_rate(i32 %179, i32 %182)
  %184 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @aic32x4_set_aosr(%struct.snd_soc_component* %184, i32 %185)
  %187 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 3
  %188 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %7, align 4
  %192 = mul i32 %190, %191
  %193 = load i32, i32* %12, align 4
  %194 = mul i32 %192, %193
  %195 = call i32 @clk_set_rate(i32 %189, i32 %194)
  %196 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 4
  %197 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %7, align 4
  %201 = mul i32 %199, %200
  %202 = call i32 @clk_set_rate(i32 %198, i32 %201)
  %203 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @aic32x4_set_dosr(%struct.snd_soc_component* %203, i32 %204)
  %206 = getelementptr inbounds [6 x %struct.clk_bulk_data], [6 x %struct.clk_bulk_data]* %23, i64 0, i64 5
  %207 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = mul i32 %209, 32
  %211 = call i32 @clk_set_rate(i32 %208, i32 %210)
  store i32 0, i32* %3, align 4
  br label %236

212:                                              ; preds = %141
  br label %213

213:                                              ; preds = %212, %160
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %13, align 4
  br label %138

216:                                              ; preds = %138
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %133

220:                                              ; preds = %133
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %7, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %7, align 4
  br label %116

225:                                              ; preds = %116
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %11, align 4
  br label %103

229:                                              ; preds = %103
  %230 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %231 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @dev_err(i32 %232, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %229, %161, %67, %47
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.clk_bulk_data*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.clk_bulk_data*) #2

declare dso_local i32 @aic32x4_set_processing_blocks(%struct.snd_soc_component*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i64 @clk_round_rate(i32, i64) #2

declare dso_local i32 @clk_set_rate(i32, i32) #2

declare dso_local i32 @aic32x4_set_aosr(%struct.snd_soc_component*, i32) #2

declare dso_local i32 @aic32x4_set_dosr(%struct.snd_soc_component*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
