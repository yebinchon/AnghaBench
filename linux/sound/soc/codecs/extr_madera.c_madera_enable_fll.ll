; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_enable_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_enable_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i64, i64, i64, i64, i64, %struct.madera* }
%struct.madera = type { i32, i32, i32, i32 }
%struct.madera_fll_cfg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"No REFCLK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Enabling FLL, initially %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@MADERA_FLL_MIN_FOUT = common dso_local global i64 0, align 8
@MADERA_FLL_MAX_FOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid fout %uHz\0A\00", align 1
@CS47L35_FLL_SYNCHRONISER_OFFS = common dso_local global i32 0, align 4
@MADERA_FLL_SYNCHRONISER_OFFS = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_FREERUN = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_7_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_GAIN_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Synchroniser changed on active FLL\0A\00", align 1
@MADERA_FLL_SYNCHRONISER_7_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_SYNC_DFSAT_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_SYNC_DFSAT = common dso_local global i32 0, align 4
@MADERA_FLL_SYNCHRONISER_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_SYNC_ENA = common dso_local global i32 0, align 4
@MADERA_FLL1_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*)* @madera_enable_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_enable_fll(%struct.madera_fll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera_fll*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.madera_fll_cfg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %3, align 8
  %13 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %14 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %13, i32 0, i32 6
  %15 = load %struct.madera*, %struct.madera** %14, align 8
  store %struct.madera* %15, %struct.madera** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %17 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %18 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @madera_is_enabled_fll(%struct.madera_fll* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %345

25:                                               ; preds = %1
  %26 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %27 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %32 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %25
  %36 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %37 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %341

40:                                               ; preds = %30
  %41 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 @madera_fll_dbg(%struct.madera_fll* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %48 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MADERA_FLL_MIN_FOUT, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %40
  %53 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %54 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MADERA_FLL_MAX_FOUT, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52, %40
  %59 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %60 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %61 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %341

66:                                               ; preds = %52
  %67 = load %struct.madera*, %struct.madera** %4, align 8
  %68 = getelementptr inbounds %struct.madera, %struct.madera* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %76 [
    i32 130, label %70
  ]

70:                                               ; preds = %66
  %71 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %72 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CS47L35_FLL_SYNCHRONISER_OFFS, align 4
  %75 = add i32 %73, %74
  store i32 %75, i32* %9, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %78 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MADERA_FLL_SYNCHRONISER_OFFS, align 4
  %81 = add i32 %79, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @madera_is_enabled_fll(%struct.madera_fll* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %345

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %95 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %94, i32 0, i32 6
  %96 = load %struct.madera*, %struct.madera** %95, align 8
  %97 = getelementptr inbounds %struct.madera, %struct.madera* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %100 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %106 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %107 = call i32 @regmap_update_bits(i32 %98, i64 %104, i32 %105, i32 %106)
  %108 = call i32 @udelay(i32 32)
  %109 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %110 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %109, i32 0, i32 6
  %111 = load %struct.madera*, %struct.madera** %110, align 8
  %112 = getelementptr inbounds %struct.madera, %struct.madera* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %115 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @MADERA_FLL_CONTROL_7_OFFS, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32, i32* @MADERA_FLL1_GAIN_MASK, align 4
  %121 = call i32 @regmap_update_bits(i32 %113, i64 %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %93, %90
  %123 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %124 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %129 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %130 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @madera_calc_fll(%struct.madera_fll* %128, %struct.madera_fll_cfg* %8, i64 %131, i32 1)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %341

136:                                              ; preds = %127
  %137 = load %struct.madera*, %struct.madera** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %140 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @madera_write_fll(%struct.madera* %137, i32 %138, %struct.madera_fll_cfg* %8, i64 %141, i32 1, i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %136, %122
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %160 = call i32 @madera_fll_warn(%struct.madera_fll* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %150, %147
  %162 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %163 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %164 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @madera_calc_fll(%struct.madera_fll* %162, %struct.madera_fll_cfg* %8, i64 %165, i32 0)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %341

170:                                              ; preds = %161
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 65536
  %181 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %180, %182
  %184 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 2
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %173, %170
  %186 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %187 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %186, i32 0, i32 6
  %188 = load %struct.madera*, %struct.madera** %187, align 8
  %189 = getelementptr inbounds %struct.madera, %struct.madera* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %223 [
    i32 130, label %191
    i32 129, label %220
    i32 128, label %220
  ]

191:                                              ; preds = %185
  %192 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %193 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %192, i32 0, i32 6
  %194 = load %struct.madera*, %struct.madera** %193, align 8
  %195 = getelementptr inbounds %struct.madera, %struct.madera* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %200 [
    i32 0, label %197
  ]

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %10, align 4
  br label %219

200:                                              ; preds = %191
  %201 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @madera_set_fll_phase_integrator(%struct.madera_fll* %201, %struct.madera_fll_cfg* %8, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %10, align 4
  br label %218

215:                                              ; preds = %208, %200
  %216 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %197
  br label %242

220:                                              ; preds = %185, %185
  %221 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %10, align 4
  br label %242

223:                                              ; preds = %185
  %224 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @madera_set_fll_phase_integrator(%struct.madera_fll* %224, %struct.madera_fll_cfg* %8, i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %10, align 4
  br label %241

238:                                              ; preds = %231, %223
  %239 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %8, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %10, align 4
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %220, %219
  %243 = load %struct.madera*, %struct.madera** %4, align 8
  %244 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %245 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %248 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @madera_write_fll(%struct.madera* %243, i32 %246, %struct.madera_fll_cfg* %8, i64 %249, i32 0, i32 %250)
  %252 = load i32, i32* %12, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %242
  %257 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %258 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %259, 100000
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.madera*, %struct.madera** %4, align 8
  %263 = getelementptr inbounds %struct.madera, %struct.madera* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %9, align 4
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* @MADERA_FLL_SYNCHRONISER_7_OFFS, align 8
  %268 = add nsw i64 %266, %267
  %269 = load i32, i32* @MADERA_FLL1_SYNC_DFSAT_MASK, align 4
  %270 = call i32 @regmap_update_bits(i32 %264, i64 %268, i32 %269, i32 0)
  br label %282

271:                                              ; preds = %256, %242
  %272 = load %struct.madera*, %struct.madera** %4, align 8
  %273 = getelementptr inbounds %struct.madera, %struct.madera* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %9, align 4
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* @MADERA_FLL_SYNCHRONISER_7_OFFS, align 8
  %278 = add nsw i64 %276, %277
  %279 = load i32, i32* @MADERA_FLL1_SYNC_DFSAT_MASK, align 4
  %280 = load i32, i32* @MADERA_FLL1_SYNC_DFSAT, align 4
  %281 = call i32 @regmap_update_bits(i32 %274, i64 %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %271, %261
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = load %struct.madera*, %struct.madera** %4, align 8
  %287 = getelementptr inbounds %struct.madera, %struct.madera* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @pm_runtime_get_sync(i32 %288)
  br label %290

290:                                              ; preds = %285, %282
  %291 = load i32, i32* %5, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load %struct.madera*, %struct.madera** %4, align 8
  %295 = getelementptr inbounds %struct.madera, %struct.madera* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %9, align 4
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* @MADERA_FLL_SYNCHRONISER_1_OFFS, align 8
  %300 = add nsw i64 %298, %299
  %301 = load i32, i32* @MADERA_FLL1_SYNC_ENA, align 4
  %302 = load i32, i32* @MADERA_FLL1_SYNC_ENA, align 4
  %303 = call i32 @regmap_update_bits(i32 %296, i64 %300, i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %293, %290
  %305 = load %struct.madera*, %struct.madera** %4, align 8
  %306 = getelementptr inbounds %struct.madera, %struct.madera* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %309 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = zext i32 %310 to i64
  %312 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %313 = add nsw i64 %311, %312
  %314 = load i32, i32* @MADERA_FLL1_ENA, align 4
  %315 = load i32, i32* @MADERA_FLL1_ENA, align 4
  %316 = call i32 @regmap_update_bits(i32 %307, i64 %313, i32 %314, i32 %315)
  %317 = load i32, i32* %6, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %304
  %320 = load %struct.madera*, %struct.madera** %4, align 8
  %321 = getelementptr inbounds %struct.madera, %struct.madera* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %324 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %328 = add nsw i64 %326, %327
  %329 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %330 = call i32 @regmap_update_bits(i32 %322, i64 %328, i32 %329, i32 0)
  br label %331

331:                                              ; preds = %319, %304
  %332 = load i32, i32* %12, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %6, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334, %331
  %338 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %339 = call i32 @madera_wait_for_fll(%struct.madera_fll* %338, i32 1)
  br label %340

340:                                              ; preds = %337, %334
  store i32 0, i32* %2, align 4
  br label %345

341:                                              ; preds = %169, %135, %58, %35
  %342 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %343 = call i32 @madera_disable_fll(%struct.madera_fll* %342)
  %344 = load i32, i32* %11, align 4
  store i32 %344, i32* %2, align 4
  br label %345

345:                                              ; preds = %341, %340, %88, %23
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @madera_is_enabled_fll(%struct.madera_fll*, i32) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, ...) #1

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @madera_calc_fll(%struct.madera_fll*, %struct.madera_fll_cfg*, i64, i32) #1

declare dso_local i32 @madera_write_fll(%struct.madera*, i32, %struct.madera_fll_cfg*, i64, i32, i32) #1

declare dso_local i32 @madera_fll_warn(%struct.madera_fll*, i8*) #1

declare dso_local i32 @madera_set_fll_phase_integrator(%struct.madera_fll*, %struct.madera_fll_cfg*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @madera_wait_for_fll(%struct.madera_fll*, i32) #1

declare dso_local i32 @madera_disable_fll(%struct.madera_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
