; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_enable_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_enable_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i32, i32, i32, i64, i32, i32, %struct.arizona* }
%struct.arizona = type { i32, i32 }
%struct.arizona_fll_cfg = type { i32, i32 }

@ARIZONA_FLL1_FREERUN = common dso_local global i32 0, align 4
@ARIZONA_FLL1_GAIN_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_SYNC_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No clocks provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Synchroniser changed on active FLL\0A\00", align 1
@ARIZONA_FLL1_SYNC_BW = common dso_local global i32 0, align 4
@ARIZONA_FLL1_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Waiting for FLL lock...\0A\00", align 1
@ARIZONA_INTERRUPT_RAW_STATUS_5 = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLOCK_OK_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Timed out waiting for lock\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"FLL locked (%d polls)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*)* @arizona_enable_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_enable_fll(%struct.arizona_fll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arizona_fll*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona_fll_cfg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %3, align 8
  %11 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %12 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %11, i32 0, i32 6
  %13 = load %struct.arizona*, %struct.arizona** %12, align 8
  store %struct.arizona* %13, %struct.arizona** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %15 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %16 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @arizona_is_enabled_fll(%struct.arizona_fll* %14, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %20 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %21 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 16
  %24 = call i32 @arizona_is_enabled_fll(%struct.arizona_fll* %19, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %328

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %328

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %39 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %38, i32 0, i32 6
  %40 = load %struct.arizona*, %struct.arizona** %39, align 8
  %41 = getelementptr inbounds %struct.arizona, %struct.arizona* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %44 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %48 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %49 = call i32 @regmap_update_bits(i32 %42, i64 %46, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 32)
  %51 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %52 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %51, i32 0, i32 6
  %53 = load %struct.arizona*, %struct.arizona** %52, align 8
  %54 = getelementptr inbounds %struct.arizona, %struct.arizona* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %57 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 9
  %60 = load i32, i32* @ARIZONA_FLL1_GAIN_MASK, align 4
  %61 = call i32 @regmap_update_bits_async(i32 %55, i64 %59, i32 %60, i32 0)
  %62 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %63 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %64 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 16
  %67 = call i32 @arizona_is_enabled_fll(%struct.arizona_fll* %62, i64 %66)
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %37
  %70 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %71 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %72 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 16
  %75 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %70, i64 %74, i32 0)
  br label %76

76:                                               ; preds = %69, %37
  %77 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %78 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %79 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %77, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %76, %34
  %83 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %84 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %151

87:                                               ; preds = %82
  %88 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %89 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %151

92:                                               ; preds = %87
  %93 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %94 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %97 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %151

100:                                              ; preds = %92
  %101 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %102 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %103 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @arizona_calc_fll(%struct.arizona_fll* %101, %struct.arizona_fll_cfg* %8, i32 %104, i32 0)
  %106 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %107 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 65536
  %118 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %117, %119
  %121 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %8, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %110, %100
  %123 = load %struct.arizona*, %struct.arizona** %4, align 8
  %124 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %125 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %128 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @arizona_apply_fll(%struct.arizona* %123, i64 %126, %struct.arizona_fll_cfg* %8, i32 %129, i32 0)
  %131 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %132 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %122
  %136 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %137 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %138 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @arizona_calc_fll(%struct.arizona_fll* %136, %struct.arizona_fll_cfg* %8, i32 %139, i32 1)
  %141 = load %struct.arizona*, %struct.arizona** %4, align 8
  %142 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %143 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 16
  %146 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %147 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @arizona_apply_fll(%struct.arizona* %141, i64 %145, %struct.arizona_fll_cfg* %8, i32 %148, i32 1)
  store i32 1, i32* %5, align 4
  br label %150

150:                                              ; preds = %135, %122
  br label %185

151:                                              ; preds = %92, %87, %82
  %152 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %153 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %151
  %157 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %158 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %159 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @arizona_calc_fll(%struct.arizona_fll* %157, %struct.arizona_fll_cfg* %8, i32 %160, i32 0)
  %162 = load %struct.arizona*, %struct.arizona** %4, align 8
  %163 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %164 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %167 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @arizona_apply_fll(%struct.arizona* %162, i64 %165, %struct.arizona_fll_cfg* %8, i32 %168, i32 0)
  %170 = load %struct.arizona*, %struct.arizona** %4, align 8
  %171 = getelementptr inbounds %struct.arizona, %struct.arizona* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %174 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 17
  %177 = load i32, i32* @ARIZONA_FLL1_SYNC_ENA, align 4
  %178 = call i32 @regmap_update_bits_async(i32 %172, i64 %176, i32 %177, i32 0)
  br label %184

179:                                              ; preds = %151
  %180 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %181 = call i32 @arizona_fll_err(%struct.arizona_fll* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %328

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184, %150
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %198 = call i32 @arizona_fll_warn(%struct.arizona_fll* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %188, %185
  %200 = load i32, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %199
  %203 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %204 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp sgt i32 %205, 100000
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load %struct.arizona*, %struct.arizona** %4, align 8
  %209 = getelementptr inbounds %struct.arizona, %struct.arizona* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %212 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 23
  %215 = load i32, i32* @ARIZONA_FLL1_SYNC_BW, align 4
  %216 = call i32 @regmap_update_bits_async(i32 %210, i64 %214, i32 %215, i32 0)
  br label %228

217:                                              ; preds = %202, %199
  %218 = load %struct.arizona*, %struct.arizona** %4, align 8
  %219 = getelementptr inbounds %struct.arizona, %struct.arizona* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %222 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 23
  %225 = load i32, i32* @ARIZONA_FLL1_SYNC_BW, align 4
  %226 = load i32, i32* @ARIZONA_FLL1_SYNC_BW, align 4
  %227 = call i32 @regmap_update_bits_async(i32 %220, i64 %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %217, %207
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = load %struct.arizona*, %struct.arizona** %4, align 8
  %233 = getelementptr inbounds %struct.arizona, %struct.arizona* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @pm_runtime_get_sync(i32 %234)
  br label %236

236:                                              ; preds = %231, %228
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %236
  %240 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %241 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %242 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 16
  %245 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %240, i64 %244, i32 1)
  %246 = load %struct.arizona*, %struct.arizona** %4, align 8
  %247 = getelementptr inbounds %struct.arizona, %struct.arizona* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %250 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 17
  %253 = load i32, i32* @ARIZONA_FLL1_SYNC_ENA, align 4
  %254 = load i32, i32* @ARIZONA_FLL1_SYNC_ENA, align 4
  %255 = call i32 @regmap_update_bits_async(i32 %248, i64 %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %239, %236
  %257 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %258 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %259 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %257, i64 %260, i32 1)
  %262 = load %struct.arizona*, %struct.arizona** %4, align 8
  %263 = getelementptr inbounds %struct.arizona, %struct.arizona* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %266 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  %269 = load i32, i32* @ARIZONA_FLL1_ENA, align 4
  %270 = load i32, i32* @ARIZONA_FLL1_ENA, align 4
  %271 = call i32 @regmap_update_bits_async(i32 %264, i64 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %256
  %275 = load %struct.arizona*, %struct.arizona** %4, align 8
  %276 = getelementptr inbounds %struct.arizona, %struct.arizona* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %279 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  %282 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %283 = call i32 @regmap_update_bits_async(i32 %277, i64 %281, i32 %282, i32 0)
  br label %284

284:                                              ; preds = %274, %256
  %285 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %286 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %287

287:                                              ; preds = %314, %284
  %288 = load i32, i32* %9, align 4
  %289 = icmp slt i32 %288, 15
  br i1 %289, label %290, label %317

290:                                              ; preds = %287
  %291 = load i32, i32* %9, align 4
  %292 = icmp slt i32 %291, 5
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 @usleep_range(i32 200, i32 400)
  br label %297

295:                                              ; preds = %290
  %296 = call i32 @msleep(i32 20)
  br label %297

297:                                              ; preds = %295, %293
  %298 = load %struct.arizona*, %struct.arizona** %4, align 8
  %299 = getelementptr inbounds %struct.arizona, %struct.arizona* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ARIZONA_INTERRUPT_RAW_STATUS_5, align 4
  %302 = call i32 @regmap_read(i32 %300, i32 %301, i32* %10)
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* @ARIZONA_FLL1_CLOCK_OK_STS, align 4
  %305 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %306 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %307, 1
  %309 = shl i32 %304, %308
  %310 = and i32 %303, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %297
  br label %317

313:                                              ; preds = %297
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %287

317:                                              ; preds = %312, %287
  %318 = load i32, i32* %9, align 4
  %319 = icmp eq i32 %318, 15
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %322 = call i32 @arizona_fll_warn(%struct.arizona_fll* %321, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %327

323:                                              ; preds = %317
  %324 = load %struct.arizona_fll*, %struct.arizona_fll** %3, align 8
  %325 = load i32, i32* %9, align 4
  %326 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %324, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %323, %320
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %327, %179, %32, %27
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @arizona_is_enabled_fll(%struct.arizona_fll*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_update_bits_async(i32, i64, i32, i32) #1

declare dso_local i32 @arizona_set_fll_clks(%struct.arizona_fll*, i64, i32) #1

declare dso_local i32 @arizona_calc_fll(%struct.arizona_fll*, %struct.arizona_fll_cfg*, i32, i32) #1

declare dso_local i32 @arizona_apply_fll(%struct.arizona*, i64, %struct.arizona_fll_cfg*, i32, i32) #1

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*) #1

declare dso_local i32 @arizona_fll_warn(%struct.arizona_fll*, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @arizona_fll_dbg(%struct.arizona_fll*, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
