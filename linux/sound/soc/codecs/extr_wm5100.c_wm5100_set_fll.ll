; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.i2c_client = type { i64 }
%struct.wm5100_priv = type { %struct.wm5100_fll* }
%struct.wm5100_fll = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32, i32 }

@WM5100_FLL1_CONTROL_1 = common dso_local global i32 0, align 4
@WM5100_FLL1_LOCK_STS = common dso_local global i32 0, align 4
@WM5100_FLL2_CONTROL_2 = common dso_local global i32 0, align 4
@WM5100_FLL2_LOCK_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unknown FLL %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FLL%d disabled\00", align 1
@WM5100_FLL1_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid FLL source %d\0A\00", align 1
@WM5100_FLL1_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_FRATIO_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM5100_FLL1_THETA_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_N_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM5100_FLL1_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@WM5100_FLL1_LAMBDA_MASK = common dso_local global i32 0, align 4
@WM5100_CLOCKING_3 = common dso_local global i32 0, align 4
@WM5100_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM5100_INTERRUPT_RAW_STATUS_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read FLL status: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"FLL%d lock timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"FLL%d running %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm5100_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.wm5100_priv*, align 8
  %14 = alloca %struct._fll_div, align 4
  %15 = alloca %struct.wm5100_fll*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.i2c_client* @to_i2c_client(i32 %24)
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %26)
  store %struct.wm5100_priv* %27, %struct.wm5100_priv** %13, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %45 [
    i32 136, label %29
    i32 135, label %37
  ]

29:                                               ; preds = %5
  %30 = load %struct.wm5100_priv*, %struct.wm5100_priv** %13, align 8
  %31 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %30, i32 0, i32 0
  %32 = load %struct.wm5100_fll*, %struct.wm5100_fll** %31, align 8
  %33 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %32, i64 0
  store %struct.wm5100_fll* %33, %struct.wm5100_fll** %15, align 8
  %34 = load i32, i32* @WM5100_FLL1_CONTROL_1, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* @WM5100_FLL1_LOCK_STS, align 4
  store i32 %36, i32* %18, align 4
  br label %53

37:                                               ; preds = %5
  %38 = load %struct.wm5100_priv*, %struct.wm5100_priv** %13, align 8
  %39 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %38, i32 0, i32 0
  %40 = load %struct.wm5100_fll*, %struct.wm5100_fll** %39, align 8
  %41 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %40, i64 1
  store %struct.wm5100_fll* %41, %struct.wm5100_fll** %15, align 8
  %42 = load i32, i32* @WM5100_FLL2_CONTROL_2, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @WM5100_FLL2_LOCK_STS, align 4
  store i32 %44, i32* %18, align 4
  br label %53

45:                                               ; preds = %5
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %252

53:                                               ; preds = %37, %29
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %53
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %63 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pm_runtime_put(i32 %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %73 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @WM5100_FLL1_ENA, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %76, i32 %77, i32 0)
  store i32 0, i32* %6, align 4
  br label %252

79:                                               ; preds = %53
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %82 [
    i32 129, label %81
    i32 128, label %81
    i32 131, label %81
    i32 130, label %81
    i32 134, label %81
    i32 133, label %81
    i32 132, label %81
  ]

81:                                               ; preds = %79, %79, %79, %79, %79, %79, %79
  br label %90

82:                                               ; preds = %79
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %252

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @fll_factors(%struct._fll_div* %14, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %6, align 4
  br label %252

98:                                               ; preds = %90
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* @WM5100_FLL1_ENA, align 4
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i32 %101, i32 %102, i32 0)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 2
  %107 = load i32, i32* @WM5100_FLL1_OUTDIV_MASK, align 4
  %108 = load i32, i32* @WM5100_FLL1_FRATIO_MASK, align 4
  %109 = or i32 %107, %108
  %110 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @WM5100_FLL1_OUTDIV_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %113, %115
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %106, i32 %109, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 3
  %121 = load i32, i32* @WM5100_FLL1_THETA_MASK, align 4
  %122 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %120, i32 %121, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 5
  %128 = load i32, i32* @WM5100_FLL1_N_MASK, align 4
  %129 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %127, i32 %128, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 6
  %135 = load i32, i32* @WM5100_FLL1_REFCLK_DIV_MASK, align 4
  %136 = load i32, i32* @WM5100_FLL1_REFCLK_SRC_MASK, align 4
  %137 = or i32 %135, %136
  %138 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @WM5100_FLL1_REFCLK_DIV_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %134, i32 %137, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 7
  %148 = load i32, i32* @WM5100_FLL1_LAMBDA_MASK, align 4
  %149 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %147, i32 %148, i32 %150)
  %152 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %153 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %152, i32 0, i32 3
  %154 = call i32 @try_wait_for_completion(i32* %153)
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %156 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @pm_runtime_get_sync(i32 %157)
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* @WM5100_FLL1_ENA, align 4
  %163 = load i32, i32* @WM5100_FLL1_ENA, align 4
  %164 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %159, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %98
  store i32 2, i32* %20, align 4
  br label %171

170:                                              ; preds = %98
  store i32 50, i32* %20, align 4
  br label %171

171:                                              ; preds = %170, %169
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %173 = load i32, i32* @WM5100_CLOCKING_3, align 4
  %174 = load i32, i32* @WM5100_SYSCLK_ENA, align 4
  %175 = load i32, i32* @WM5100_SYSCLK_ENA, align 4
  %176 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %172, i32 %173, i32 %174, i32 %175)
  store i32 0, i32* %19, align 4
  br label %177

177:                                              ; preds = %216, %171
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %20, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %219

181:                                              ; preds = %177
  %182 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %188 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %187, i32 0, i32 3
  %189 = call i32 @msecs_to_jiffies(i32 25)
  %190 = call i64 @wait_for_completion_timeout(i32* %188, i32 %189)
  store i64 %190, i64* %21, align 8
  %191 = load i64, i64* %21, align 8
  %192 = icmp ugt i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %219

194:                                              ; preds = %186
  br label %197

195:                                              ; preds = %181
  %196 = call i32 @msleep(i32 1)
  br label %197

197:                                              ; preds = %195, %194
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %199 = load i32, i32* @WM5100_INTERRUPT_RAW_STATUS_3, align 4
  %200 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %198, i32 %199)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %205 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %16, align 4
  %208 = call i32 @dev_err(i32 %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  br label %216

209:                                              ; preds = %197
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %18, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %219

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215, %203
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %19, align 4
  br label %177

219:                                              ; preds = %214, %193, %177
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %225 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @dev_err(i32 %226, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %230 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @pm_runtime_put(i32 %231)
  %233 = load i32, i32* @ETIMEDOUT, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %6, align 4
  br label %252

235:                                              ; preds = %219
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %238 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %241 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.wm5100_fll*, %struct.wm5100_fll** %15, align 8
  %244 = getelementptr inbounds %struct.wm5100_fll, %struct.wm5100_fll* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %246 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %247, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %248, i32 %249, i32 %250)
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %235, %223, %96, %82, %71, %45
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

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
