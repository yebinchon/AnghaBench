; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fll_div = type { i32, i32, i32, i32, i32 }

@WM8995_AIF1_CLOCKING_1 = common dso_local global i64 0, align 8
@WM8995_AIF1CLK_ENA = common dso_local global i32 0, align 4
@WM8995_AIF2_CLOCKING_1 = common dso_local global i64 0, align 8
@WM8995_AIF2CLK_ENA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8995_AIF1CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_AIF2CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@WM8995_FLL1_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8995_FLL1_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM8995_FLL1_CONTROL_2 = common dso_local global i64 0, align 8
@WM8995_FLL1_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_CONTROL_3 = common dso_local global i64 0, align 8
@WM8995_FLL1_CONTROL_4 = common dso_local global i64 0, align 8
@WM8995_FLL1_N_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_N_SHIFT = common dso_local global i32 0, align 4
@WM8995_FLL1_CONTROL_5 = common dso_local global i64 0, align 8
@WM8995_FLL1_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8995_FLL1_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@WM8995_FLL1_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8995_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_set_fll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8995_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fll_div, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %12, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %24 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8995_priv* %24, %struct.wm8995_priv** %13, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %26 = load i64, i64* @WM8995_AIF1_CLOCKING_1, align 8
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i64 %26)
  %28 = load i32, i32* @WM8995_AIF1CLK_ENA, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %31 = load i64, i64* @WM8995_AIF2_CLOCKING_1, align 8
  %32 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %30, i64 %31)
  %33 = load i32, i32* @WM8995_AIF2CLK_ENA, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %38 [
    i32 133, label %36
    i32 132, label %37
  ]

36:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %41

37:                                               ; preds = %5
  store i32 32, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %236

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %51 [
    i32 0, label %43
    i32 129, label %50
    i32 128, label %50
    i32 130, label %50
    i32 131, label %50
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %236

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %41, %41, %41, %41
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %236

54:                                               ; preds = %50, %49
  %55 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %56 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %54
  %66 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %67 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %65
  %77 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %78 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %236

88:                                               ; preds = %76, %65, %54
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @wm8995_get_fll_config(%struct.fll_div* %16, i32 %92, i32 %93)
  store i32 %94, i32* %15, align 4
  br label %113

95:                                               ; preds = %88
  %96 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %97 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %105 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @wm8995_get_fll_config(%struct.fll_div* %16, i32 %103, i32 %111)
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %95, %91
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %6, align 4
  br label %236

118:                                              ; preds = %113
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %120 = load i64, i64* @WM8995_AIF1_CLOCKING_1, align 8
  %121 = load i32, i32* @WM8995_AIF1CLK_ENA_MASK, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i64 %120, i32 %121, i32 0)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %124 = load i64, i64* @WM8995_AIF2_CLOCKING_1, align 8
  %125 = load i32, i32* @WM8995_AIF2CLK_ENA_MASK, align 4
  %126 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i64 %124, i32 %125, i32 0)
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %128 = load i64, i64* @WM8995_FLL1_CONTROL_1, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* @WM8995_FLL1_ENA_MASK, align 4
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %127, i64 %131, i32 %132, i32 0)
  %134 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @WM8995_FLL1_OUTDIV_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @WM8995_FLL1_FRATIO_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = or i32 %137, %141
  store i32 %142, i32* %17, align 4
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %144 = load i64, i64* @WM8995_FLL1_CONTROL_2, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i32, i32* @WM8995_FLL1_OUTDIV_MASK, align 4
  %149 = load i32, i32* @WM8995_FLL1_FRATIO_MASK, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i64 %147, i32 %150, i32 %151)
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %154 = load i64, i64* @WM8995_FLL1_CONTROL_3, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %153, i64 %157, i32 %159)
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %162 = load i64, i64* @WM8995_FLL1_CONTROL_4, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load i32, i32* @WM8995_FLL1_N_MASK, align 4
  %167 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @WM8995_FLL1_N_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %161, i64 %165, i32 %166, i32 %170)
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %173 = load i64, i64* @WM8995_FLL1_CONTROL_5, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* @WM8995_FLL1_REFCLK_DIV_MASK, align 4
  %178 = load i32, i32* @WM8995_FLL1_REFCLK_SRC_MASK, align 4
  %179 = or i32 %177, %178
  %180 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @WM8995_FLL1_REFCLK_DIV_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = load i32, i32* %9, align 4
  %185 = sub nsw i32 %184, 1
  %186 = or i32 %183, %185
  %187 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %172, i64 %176, i32 %179, i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %118
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %192 = load i64, i64* @WM8995_FLL1_CONTROL_1, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = load i32, i32* @WM8995_FLL1_ENA_MASK, align 4
  %197 = load i32, i32* @WM8995_FLL1_ENA, align 4
  %198 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %191, i64 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %190, %118
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %202 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  store i32 %200, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %210 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.wm8995_priv*, %struct.wm8995_priv** %13, align 8
  %218 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  store i32 %216, i32* %223, align 4
  %224 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %225 = load i64, i64* @WM8995_AIF1_CLOCKING_1, align 8
  %226 = load i32, i32* @WM8995_AIF1CLK_ENA_MASK, align 4
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %224, i64 %225, i32 %226, i32 %227)
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %230 = load i64, i64* @WM8995_AIF2_CLOCKING_1, align 8
  %231 = load i32, i32* @WM8995_AIF2CLK_ENA_MASK, align 4
  %232 = load i32, i32* %19, align 4
  %233 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %229, i64 %230, i32 %231, i32 %232)
  %234 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %235 = call i32 @configure_clock(%struct.snd_soc_component* %234)
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %199, %116, %87, %51, %46, %38
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @wm8995_get_fll_config(%struct.fll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
