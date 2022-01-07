; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i64 }
%struct._fll_div = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM8996_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8996_FLL_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown FLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8996_FLL_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@WM8996_FLL_REF_FREQ_SHIFT = common dso_local global i32 0, align 4
@WM8996_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM8996_FLL_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_REF_FREQ = common dso_local global i32 0, align 4
@WM8996_FLL_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_EFS_ENA = common dso_local global i32 0, align 4
@WM8996_FLL_LFSR_SEL_SHIFT = common dso_local global i32 0, align 4
@WM8996_FLL_EFS_2 = common dso_local global i32 0, align 4
@WM8996_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8996_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8996_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8996_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8996_FLL_N_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_LOOP_GAIN_MASK = common dso_local global i32 0, align 4
@WM8996_FLL_N_SHIFT = common dso_local global i32 0, align 4
@WM8996_FLL_EFS_1 = common dso_local global i32 0, align 4
@WM8996_FLL_CONTROL_6 = common dso_local global i32 0, align 4
@WM8996_FLL_SWITCH_CLK = common dso_local global i32 0, align 4
@WM8996_INTERRUPT_RAW_STATUS_2 = common dso_local global i32 0, align 4
@WM8996_FLL_LOCK_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Timed out waiting for FLL\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"FLL configured for %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm8996_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8996_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm8996_priv*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct._fll_div, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8996_priv* %21, %struct.wm8996_priv** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.i2c_client* @to_i2c_client(i32 %24)
  store %struct.i2c_client* %25, %struct.i2c_client** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %28 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %34 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %40 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %270

44:                                               ; preds = %37, %31, %5
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %53 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %55 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %57 = load i32, i32* @WM8996_FLL_CONTROL_1, align 4
  %58 = load i32, i32* @WM8996_FLL_ENA, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = call i32 @wm8996_bg_disable(%struct.snd_soc_component* %60)
  store i32 0, i32* %6, align 4
  br label %270

62:                                               ; preds = %44
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @fll_factors(%struct._fll_div* %14, i32 %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %6, align 4
  br label %270

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %76 [
    i32 129, label %72
    i32 128, label %73
    i32 130, label %74
    i32 131, label %75
  ]

72:                                               ; preds = %70
  store i32 0, i32* %18, align 4
  br label %84

73:                                               ; preds = %70
  store i32 1, i32* %18, align 4
  br label %84

74:                                               ; preds = %70
  store i32 2, i32* %18, align 4
  br label %84

75:                                               ; preds = %70
  store i32 3, i32* %18, align 4
  br label %84

76:                                               ; preds = %70
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %270

84:                                               ; preds = %75, %74, %73, %72
  %85 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @WM8996_FLL_REFCLK_DIV_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %18, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %18, align 4
  %91 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @WM8996_FLL_REF_FREQ_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %18, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %18, align 4
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %98 = load i32, i32* @WM8996_FLL_CONTROL_5, align 4
  %99 = load i32, i32* @WM8996_FLL_REFCLK_DIV_MASK, align 4
  %100 = load i32, i32* @WM8996_FLL_REF_FREQ, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @WM8996_FLL_REFCLK_SRC_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %103, i32 %104)
  store i32 0, i32* %18, align 4
  %106 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %84
  %110 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109, %84
  %114 = load i32, i32* @WM8996_FLL_EFS_ENA, align 4
  %115 = load i32, i32* @WM8996_FLL_LFSR_SEL_SHIFT, align 4
  %116 = shl i32 3, %115
  %117 = or i32 %114, %116
  %118 = load i32, i32* %18, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %18, align 4
  br label %125

120:                                              ; preds = %109
  %121 = load i32, i32* @WM8996_FLL_LFSR_SEL_SHIFT, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %18, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %127 = load i32, i32* @WM8996_FLL_EFS_2, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %126, i32 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %131 = load i32, i32* @WM8996_FLL_CONTROL_2, align 4
  %132 = load i32, i32* @WM8996_FLL_OUTDIV_MASK, align 4
  %133 = load i32, i32* @WM8996_FLL_FRATIO_MASK, align 4
  %134 = or i32 %132, %133
  %135 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @WM8996_FLL_OUTDIV_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %138, %140
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %130, i32 %131, i32 %134, i32 %141)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %144 = load i32, i32* @WM8996_FLL_CONTROL_3, align 4
  %145 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %143, i32 %144, i32 %146)
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %149 = load i32, i32* @WM8996_FLL_CONTROL_4, align 4
  %150 = load i32, i32* @WM8996_FLL_N_MASK, align 4
  %151 = load i32, i32* @WM8996_FLL_LOOP_GAIN_MASK, align 4
  %152 = or i32 %150, %151
  %153 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @WM8996_FLL_N_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %156, %158
  %160 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %148, i32 %149, i32 %152, i32 %159)
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %162 = load i32, i32* @WM8996_FLL_EFS_1, align 4
  %163 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %161, i32 %162, i32 %164)
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %167 = load i32, i32* @WM8996_FLL_CONTROL_1, align 4
  %168 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %166, i32 %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @WM8996_FLL_ENA, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %125
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %175 = call i32 @wm8996_bg_enable(%struct.snd_soc_component* %174)
  br label %176

176:                                              ; preds = %173, %125
  %177 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %178 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %177, i32 0, i32 3
  %179 = call i32 @try_wait_for_completion(i32* %178)
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %181 = load i32, i32* @WM8996_FLL_CONTROL_1, align 4
  %182 = load i32, i32* @WM8996_FLL_ENA, align 4
  %183 = load i32, i32* @WM8996_FLL_ENA, align 4
  %184 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %186 = load i32, i32* @WM8996_FLL_CONTROL_6, align 4
  %187 = load i32, i32* @WM8996_FLL_SWITCH_CLK, align 4
  %188 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %185, i32 %186, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = icmp ugt i32 %189, 1000000
  br i1 %190, label %191, label %193

191:                                              ; preds = %176
  %192 = call i64 @usecs_to_jiffies(i32 300)
  store i64 %192, i64* %15, align 8
  br label %195

193:                                              ; preds = %176
  %194 = call i64 @msecs_to_jiffies(i32 2)
  store i64 %194, i64* %15, align 8
  br label %195

195:                                              ; preds = %193, %191
  %196 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i64, i64* %15, align 8
  %202 = mul i64 %201, 10
  store i64 %202, i64* %15, align 8
  br label %211

203:                                              ; preds = %195
  %204 = load i64, i64* %15, align 8
  %205 = udiv i64 %204, 2
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %209

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %208, %207
  %210 = phi i64 [ %205, %207 ], [ 1, %208 ]
  store i64 %210, i64* %15, align 8
  br label %211

211:                                              ; preds = %209, %200
  store i32 0, i32* %19, align 4
  br label %212

212:                                              ; preds = %240, %211
  %213 = load i32, i32* %19, align 4
  %214 = icmp slt i32 %213, 10
  br i1 %214, label %215, label %243

215:                                              ; preds = %212
  %216 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %217 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %216, i32 0, i32 3
  %218 = load i64, i64* %15, align 8
  %219 = call i64 @wait_for_completion_timeout(i32* %217, i64 %218)
  store i64 %219, i64* %16, align 8
  %220 = load i64, i64* %16, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %224 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i32 @WARN_ON(i32 %228)
  store i32 1, i32* %17, align 4
  br label %243

230:                                              ; preds = %215
  %231 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %232 = load i32, i32* @WM8996_INTERRUPT_RAW_STATUS_2, align 4
  %233 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %231, i32 %232)
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* @WM8996_FLL_LOCK_STS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  br label %243

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %19, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %19, align 4
  br label %212

243:                                              ; preds = %238, %222, %212
  %244 = load i32, i32* %19, align 4
  %245 = icmp eq i32 %244, 10
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %248 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, i8*, ...) @dev_err(i32 %249, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %251 = load i32, i32* @ETIMEDOUT, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %246, %243
  %254 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %255 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = call i32 (i32, i8*, ...) @dev_dbg(i32 %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i32, i32* %10, align 4
  %261 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %262 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %265 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.wm8996_priv*, %struct.wm8996_priv** %12, align 8
  %268 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %17, align 4
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %253, %76, %68, %47, %43
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8996_bg_disable(%struct.snd_soc_component*) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8996_bg_enable(%struct.snd_soc_component*) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
