; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.i2c_client = type { i64 }
%struct.wm2200_priv = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"FLL disabled\00", align 1
@WM2200_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM2200_FLL_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid FLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM2200_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM2200_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_FRATIO_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM2200_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM2200_FLL_FRACN_ENA = common dso_local global i32 0, align 4
@WM2200_FLL_EFS_2 = common dso_local global i32 0, align 4
@WM2200_FLL_EFS_ENA = common dso_local global i32 0, align 4
@WM2200_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM2200_FLL_THETA_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_CONTROL_6 = common dso_local global i32 0, align 4
@WM2200_FLL_N_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_CONTROL_7 = common dso_local global i32 0, align 4
@WM2200_FLL_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_CLK_REF_SRC_MASK = common dso_local global i32 0, align 4
@WM2200_FLL_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@WM2200_FLL_EFS_1 = common dso_local global i32 0, align 4
@WM2200_FLL_LAMBDA_MASK = common dso_local global i32 0, align 4
@WM2200_CLOCKING_3 = common dso_local global i32 0, align 4
@WM2200_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM2200_INTERRUPT_RAW_STATUS_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to read FLL status: %d\0A\00", align 1
@WM2200_FLL_LOCK_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"FLL lock timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"FLL running %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm2200_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.wm2200_priv*, align 8
  %14 = alloca %struct._fll_div, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.i2c_client* @to_i2c_client(i32 %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = call %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm2200_priv* %24, %struct.wm2200_priv** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %5
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %33 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_put(i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %43 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = load i32, i32* @WM2200_FLL_CONTROL_1, align 4
  %46 = load i32, i32* @WM2200_FLL_ENA, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 0)
  store i32 0, i32* %6, align 4
  br label %236

48:                                               ; preds = %5
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %51 [
    i32 129, label %50
    i32 128, label %50
    i32 130, label %50
  ]

50:                                               ; preds = %48, %48, %48
  br label %59

51:                                               ; preds = %48
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %236

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @fll_factors(%struct._fll_div* %14, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %6, align 4
  br label %236

67:                                               ; preds = %59
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %69 = load i32, i32* @WM2200_FLL_CONTROL_1, align 4
  %70 = load i32, i32* @WM2200_FLL_ENA, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 0)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %73 = load i32, i32* @WM2200_FLL_CONTROL_2, align 4
  %74 = load i32, i32* @WM2200_FLL_OUTDIV_MASK, align 4
  %75 = load i32, i32* @WM2200_FLL_FRATIO_MASK, align 4
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WM2200_FLL_OUTDIV_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %80, %82
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %76, i32 %83)
  %85 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %67
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %90 = load i32, i32* @WM2200_FLL_CONTROL_3, align 4
  %91 = load i32, i32* @WM2200_FLL_FRACN_ENA, align 4
  %92 = load i32, i32* @WM2200_FLL_FRACN_ENA, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %95 = load i32, i32* @WM2200_FLL_EFS_2, align 4
  %96 = load i32, i32* @WM2200_FLL_EFS_ENA, align 4
  %97 = load i32, i32* @WM2200_FLL_EFS_ENA, align 4
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %67
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %101 = load i32, i32* @WM2200_FLL_CONTROL_3, align 4
  %102 = load i32, i32* @WM2200_FLL_FRACN_ENA, align 4
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %100, i32 %101, i32 %102, i32 0)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %105 = load i32, i32* @WM2200_FLL_EFS_2, align 4
  %106 = load i32, i32* @WM2200_FLL_EFS_ENA, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %99, %88
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %110 = load i32, i32* @WM2200_FLL_CONTROL_4, align 4
  %111 = load i32, i32* @WM2200_FLL_THETA_MASK, align 4
  %112 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %111, i32 %113)
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %116 = load i32, i32* @WM2200_FLL_CONTROL_6, align 4
  %117 = load i32, i32* @WM2200_FLL_N_MASK, align 4
  %118 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %115, i32 %116, i32 %117, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %122 = load i32, i32* @WM2200_FLL_CONTROL_7, align 4
  %123 = load i32, i32* @WM2200_FLL_CLK_REF_DIV_MASK, align 4
  %124 = load i32, i32* @WM2200_FLL_CLK_REF_SRC_MASK, align 4
  %125 = or i32 %123, %124
  %126 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WM2200_FLL_CLK_REF_DIV_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %125, i32 %131)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %134 = load i32, i32* @WM2200_FLL_EFS_1, align 4
  %135 = load i32, i32* @WM2200_FLL_LAMBDA_MASK, align 4
  %136 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %133, i32 %134, i32 %135, i32 %137)
  %139 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %140 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %139, i32 0, i32 3
  %141 = call i32 @try_wait_for_completion(i32* %140)
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %143 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pm_runtime_get_sync(i32 %144)
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %147 = load i32, i32* @WM2200_FLL_CONTROL_1, align 4
  %148 = load i32, i32* @WM2200_FLL_ENA, align 4
  %149 = load i32, i32* @WM2200_FLL_ENA, align 4
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %108
  store i32 2, i32* %17, align 4
  br label %157

156:                                              ; preds = %108
  store i32 50, i32* %17, align 4
  br label %157

157:                                              ; preds = %156, %155
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %159 = load i32, i32* @WM2200_CLOCKING_3, align 4
  %160 = load i32, i32* @WM2200_SYSCLK_ENA, align 4
  %161 = load i32, i32* @WM2200_SYSCLK_ENA, align 4
  %162 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %158, i32 %159, i32 %160, i32 %161)
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %202, %157
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %17, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  %168 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %174 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %173, i32 0, i32 3
  %175 = call i32 @msecs_to_jiffies(i32 25)
  %176 = call i64 @wait_for_completion_timeout(i32* %174, i32 %175)
  store i64 %176, i64* %18, align 8
  %177 = load i64, i64* %18, align 8
  %178 = icmp ugt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %205

180:                                              ; preds = %172
  br label %183

181:                                              ; preds = %167
  %182 = call i32 @msleep(i32 1)
  br label %183

183:                                              ; preds = %181, %180
  %184 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %185 = load i32, i32* @WM2200_INTERRUPT_RAW_STATUS_2, align 4
  %186 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %184, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %191 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 (i32, i8*, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  br label %202

195:                                              ; preds = %183
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @WM2200_FLL_LOCK_STS, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %205

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %189
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %163

205:                                              ; preds = %200, %179, %163
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %17, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %211 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i8*, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %215 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @pm_runtime_put(i32 %216)
  %218 = load i32, i32* @ETIMEDOUT, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %6, align 4
  br label %236

220:                                              ; preds = %205
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %223 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %226 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.wm2200_priv*, %struct.wm2200_priv** %13, align 8
  %229 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  %230 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %231 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = call i32 (i32, i8*, ...) @dev_dbg(i32 %232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %233, i32 %234)
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %220, %209, %65, %51, %41
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
