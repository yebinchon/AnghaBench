; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c__wm8993_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c__wm8993_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i64 }
%struct._fll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM8993_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8993_FLL_ENA = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown FLL ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8993_FLL_FRAC_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8993_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8993_FLL_N_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_N_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Timed out waiting for FLL\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @_wm8993_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wm8993_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm8993_priv*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._fll_div, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8993_priv* %21, %struct.wm8993_priv** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.i2c_client* @to_i2c_client(i32 %24)
  store %struct.i2c_client* %25, %struct.i2c_client** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %28 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %34 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %226

38:                                               ; preds = %31, %5
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %47 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %49 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %52 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @WM8993_FLL_ENA, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %14, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %59)
  store i32 0, i32* %6, align 4
  br label %226

61:                                               ; preds = %38
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @fll_factors(%struct._fll_div* %17, i32 %62, i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %19, align 4
  store i32 %68, i32* %6, align 4
  br label %226

69:                                               ; preds = %61
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %71 = load i32, i32* @WM8993_FLL_CONTROL_5, align 4
  %72 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* @WM8993_FLL_CLK_SRC_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %85 [
    i32 128, label %78
    i32 129, label %79
    i32 130, label %82
  ]

78:                                               ; preds = %69
  br label %93

79:                                               ; preds = %69
  %80 = load i32, i32* %16, align 4
  %81 = or i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %93

82:                                               ; preds = %69
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, 2
  store i32 %84, i32* %16, align 4
  br label %93

85:                                               ; preds = %69
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %226

93:                                               ; preds = %82, %79, %78
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %95 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %96 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* @WM8993_FLL_ENA, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %102 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %101, i32 %102, i32 %103)
  %105 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %93
  %109 = load i32, i32* @WM8993_FLL_FRAC_MASK, align 4
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %117

112:                                              ; preds = %93
  %113 = load i32, i32* @WM8993_FLL_FRAC_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %14, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %112, %108
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %119 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %118, i32 %119, i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %123 = load i32, i32* @WM8993_FLL_CONTROL_2, align 4
  %124 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @WM8993_FLL_OUTDIV_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WM8993_FLL_FRATIO_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %127, %131
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %122, i32 %123, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %135 = load i32, i32* @WM8993_FLL_CONTROL_3, align 4
  %136 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %134, i32 %135, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %140 = load i32, i32* @WM8993_FLL_CONTROL_4, align 4
  %141 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* @WM8993_FLL_N_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %15, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WM8993_FLL_N_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %15, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %15, align 4
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %153 = load i32, i32* @WM8993_FLL_CONTROL_4, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  %156 = load i32, i32* @WM8993_FLL_CLK_REF_DIV_MASK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %16, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %17, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @WM8993_FLL_CLK_REF_DIV_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = load i32, i32* %16, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %16, align 4
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %167 = load i32, i32* @WM8993_FLL_CONTROL_5, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %166, i32 %167, i32 %168)
  %170 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %117
  %175 = call i32 @msecs_to_jiffies(i32 20)
  store i32 %175, i32* %18, align 4
  br label %184

176:                                              ; preds = %117
  %177 = load i32, i32* %10, align 4
  %178 = icmp ult i32 %177, 1000000
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 @msecs_to_jiffies(i32 3)
  store i32 %180, i32* %18, align 4
  br label %183

181:                                              ; preds = %176
  %182 = call i32 @msecs_to_jiffies(i32 1)
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %181, %179
  br label %184

184:                                              ; preds = %183, %174
  %185 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %186 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %185, i32 0, i32 3
  %187 = call i32 @try_wait_for_completion(i32* %186)
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %189 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @WM8993_FLL_ENA, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %188, i32 %189, i32 %192)
  %194 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %195 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %194, i32 0, i32 3
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @wait_for_completion_timeout(i32* %195, i32 %196)
  store i32 %197, i32* %18, align 4
  %198 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %199 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %184
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %207 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dev_warn(i32 %208, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %210

210:                                              ; preds = %205, %202, %184
  %211 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %212 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 (i32, i8*, ...) @dev_dbg(i32 %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %214, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %219 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %222 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.wm8993_priv*, %struct.wm8993_priv** %12, align 8
  %225 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %210, %85, %67, %41, %37
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
