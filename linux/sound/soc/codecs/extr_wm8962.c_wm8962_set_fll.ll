; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8962_priv = type { i32, i32, i32, i64, i32 }
%struct._fll_div = type { i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM8962_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8962_FLL_ENA = common dso_local global i32 0, align 4
@WM8962_FLL_REFCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@WM8962_FLL_OSC_ENA = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM8962_FLL_FRC_NCO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown FLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8962_FLL_FRAC = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8962_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8962_FLL_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8962_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8962_FLL_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_6 = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_7 = common dso_local global i32 0, align 4
@WM8962_FLL_CONTROL_8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to resume device: %d\0A\00", align 1
@WM8962_FLL_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"FLL configured for %dHz->%dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"FLL lock timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm8962_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm8962_priv*, align 8
  %13 = alloca %struct._fll_div, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.wm8962_priv* %18, %struct.wm8962_priv** %12, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %21 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %27 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %33 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %227

37:                                               ; preds = %30, %24, %5
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @dev_dbg(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %46 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %48 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %51 = load i32, i32* @WM8962_FLL_ENA, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pm_runtime_put(i32 %55)
  store i32 0, i32* %6, align 4
  br label %227

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @fll_factors(%struct._fll_div* %13, i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %6, align 4
  br label %227

65:                                               ; preds = %57
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %67 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %68 = load i32, i32* @WM8962_FLL_ENA, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %89 [
    i32 129, label %71
    i32 131, label %71
    i32 128, label %71
    i32 130, label %78
  ]

71:                                               ; preds = %65, %65, %65
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* @WM8962_FLL_REFCLK_SRC_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %97

78:                                               ; preds = %65
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %80 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %81 = load i32, i32* @WM8962_FLL_OSC_ENA, align 4
  %82 = load i32, i32* @WM8962_FLL_OSC_ENA, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %85 = load i32, i32* @WM8962_FLL_CONTROL_5, align 4
  %86 = load i32, i32* @WM8962_FLL_FRC_NCO, align 4
  %87 = load i32, i32* @WM8962_FLL_FRC_NCO, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %86, i32 %87)
  br label %97

89:                                               ; preds = %65
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %227

97:                                               ; preds = %78, %71
  %98 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @WM8962_FLL_FRAC, align 4
  %107 = load i32, i32* %16, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %111 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %112 = load i32, i32* @WM8962_FLL_ENA, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %112, i32 0)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %115 = load i32, i32* @WM8962_FLL_CONTROL_2, align 4
  %116 = load i32, i32* @WM8962_FLL_OUTDIV_MASK, align 4
  %117 = load i32, i32* @WM8962_FLL_REFCLK_DIV_MASK, align 4
  %118 = or i32 %116, %117
  %119 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @WM8962_FLL_OUTDIV_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %122, %124
  %126 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i32 %115, i32 %118, i32 %125)
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %128 = load i32, i32* @WM8962_FLL_CONTROL_3, align 4
  %129 = load i32, i32* @WM8962_FLL_FRATIO_MASK, align 4
  %130 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %127, i32 %128, i32 %129, i32 %131)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %134 = load i32, i32* @WM8962_FLL_CONTROL_6, align 4
  %135 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %133, i32 %134, i64 %136)
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %139 = load i32, i32* @WM8962_FLL_CONTROL_7, align 4
  %140 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %138, i32 %139, i64 %141)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %144 = load i32, i32* @WM8962_FLL_CONTROL_8, align 4
  %145 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %143, i32 %144, i64 %146)
  %148 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %149 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %148, i32 0, i32 4
  %150 = call i32 @reinit_completion(i32* %149)
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %152 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @pm_runtime_get_sync(i32 %153)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %109
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %159 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %6, align 4
  br label %227

164:                                              ; preds = %109
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %166 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %167 = load i32, i32* @WM8962_FLL_FRAC, align 4
  %168 = load i32, i32* @WM8962_FLL_REFCLK_SRC_MASK, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @WM8962_FLL_ENA, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @WM8962_FLL_ENA, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %165, i32 %166, i32 %171, i32 %174)
  %176 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %177 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 (i32, i8*, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %183 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %164
  %187 = call i64 @msecs_to_jiffies(i32 5)
  store i64 %187, i64* %14, align 8
  br label %190

188:                                              ; preds = %164
  %189 = call i64 @msecs_to_jiffies(i32 1)
  store i64 %189, i64* %14, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %192 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %191, i32 0, i32 4
  %193 = load i64, i64* %14, align 8
  %194 = call i64 @wait_for_completion_timeout(i32* %192, i64 %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %190
  %198 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %199 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %204 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @dev_err(i32 %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %207 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %208 = load i32, i32* @WM8962_FLL_CONTROL_1, align 4
  %209 = load i32, i32* @WM8962_FLL_ENA, align 4
  %210 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %207, i32 %208, i32 %209, i32 0)
  %211 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %212 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @pm_runtime_put(i32 %213)
  %215 = load i32, i32* @ETIMEDOUT, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  br label %227

217:                                              ; preds = %197, %190
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %220 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %223 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.wm8962_priv*, %struct.wm8962_priv** %12, align 8
  %226 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %217, %202, %157, %89, %63, %40, %36
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
