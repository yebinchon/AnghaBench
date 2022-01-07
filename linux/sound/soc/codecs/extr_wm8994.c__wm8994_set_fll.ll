; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c__wm8994_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c__wm8994_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, i32*, %struct.TYPE_2__*, i32*, i64, i64, %struct.wm8994* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wm8994 = type { i32, i32 }
%struct.fll_div = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8994_FLL1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8994_FLL1_ENA = common dso_local global i32 0, align 4
@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_SYSCLK_SRC = common dso_local global i32 0, align 4
@WM8994_AIF2_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FLL%d is currently providing SYSCLK\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Bypassing FLL%d\0A\00", align 1
@WM8994_FLL1_CONTROL_5 = common dso_local global i32 0, align 4
@WM8958_FLL1_BYP = common dso_local global i32 0, align 4
@WM8994_FLL1_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8994_FLL1_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM8994_FLL1_CONTROL_2 = common dso_local global i32 0, align 4
@WM8994_FLL1_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_CONTROL_3 = common dso_local global i32 0, align 4
@WM8994_FLL1_K_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_CONTROL_4 = common dso_local global i32 0, align 4
@WM8994_FLL1_N_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_N_SHIFT = common dso_local global i32 0, align 4
@WM8958_FLL1_EFS_1 = common dso_local global i32 0, align 4
@WM8958_FLL1_LAMBDA_MASK = common dso_local global i32 0, align 4
@WM8958_FLL1_EFS_2 = common dso_local global i32 0, align 4
@WM8958_FLL1_EFS_ENA = common dso_local global i32 0, align 4
@WM8994_FLL1_FRC_NCO = common dso_local global i32 0, align 4
@WM8994_FLL1_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8994_FLL1_FRC_NCO_SHIFT = common dso_local global i32 0, align 4
@WM8994_FLL1_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@WM8994_FLL1_FRAC = common dso_local global i32 0, align 4
@WM8994_FLL1_OSC_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Timed out waiting for FLL lock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Configuring AIFs for 128fs\0A\00", align 1
@WM8994_AIF1_RATE = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_RATE_MASK = common dso_local global i32 0, align 4
@WM8994_AIF2_RATE = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @_wm8994_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wm8994_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm8994_priv*, align 8
  %13 = alloca %struct.wm8994*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fll_div, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8994_priv* %24, %struct.wm8994_priv** %12, align 8
  %25 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %26 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %25, i32 0, i32 6
  %27 = load %struct.wm8994*, %struct.wm8994** %26, align 8
  store %struct.wm8994* %27, %struct.wm8994** %13, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %31 [
    i32 134, label %29
    i32 133, label %30
  ]

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  store i32 16, i32* %20, align 4
  br label %34

30:                                               ; preds = %5
  store i32 32, i32* %14, align 4
  store i32 1, i32* %8, align 4
  store i32 24, i32* %20, align 4
  br label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %504

34:                                               ; preds = %30, %29
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %36 = load i32, i32* @WM8994_FLL1_CONTROL_1, align 4
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %35, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @WM8994_FLL1_ENA, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %61 [
    i32 0, label %44
    i32 129, label %59
    i32 128, label %59
    i32 130, label %59
    i32 132, label %59
    i32 131, label %60
  ]

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %504

50:                                               ; preds = %44
  %51 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %52 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %64

59:                                               ; preds = %34, %34, %34, %34
  br label %64

60:                                               ; preds = %34
  store i32 12000000, i32* %10, align 4
  store i32 12000000, i32* %11, align 4
  br label %64

61:                                               ; preds = %34
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %504

64:                                               ; preds = %60, %59, %50
  %65 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %66 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %77 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %88 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %504

98:                                               ; preds = %86, %75, %64
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @wm8994_get_fll_config(%struct.wm8994* %102, %struct.fll_div* %16, i32 %103, i32 %104)
  store i32 %105, i32* %15, align 4
  br label %125

106:                                              ; preds = %98
  %107 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %108 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %109 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %117 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wm8994_get_fll_config(%struct.wm8994* %107, %struct.fll_div* %16, i32 %115, i32 %123)
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %106, %101
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  br label %504

130:                                              ; preds = %125
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %132 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %133 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %131, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @WM8994_SYSCLK_SRC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @WM8994_AIF2_CLOCKING_1, align 4
  store i32 %139, i32* %19, align 4
  br label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @WM8994_AIF1_CLOCKING_1, align 4
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %144 = load i32, i32* %19, align 4
  %145 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %143, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @WM8994_AIF1CLK_ENA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %142
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @WM8994_AIF1CLK_SRC_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %20, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %158 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i32 @dev_err(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @EBUSY, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %504

165:                                              ; preds = %150, %142
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %167 = load i32, i32* @WM8994_FLL1_CONTROL_1, align 4
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* @WM8994_FLL1_ENA, align 4
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %166, i32 %169, i32 %170, i32 0)
  %172 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %173 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %200

176:                                              ; preds = %165
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 132
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %188 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 (i32, i8*, ...) @dev_dbg(i32 %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %194 = load i32, i32* @WM8994_FLL1_CONTROL_5, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* @WM8958_FLL1_BYP, align 4
  %198 = load i32, i32* @WM8958_FLL1_BYP, align 4
  %199 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %193, i32 %196, i32 %197, i32 %198)
  br label %398

200:                                              ; preds = %183, %179, %176, %165
  %201 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @WM8994_FLL1_OUTDIV_SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @WM8994_FLL1_FRATIO_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %204, %208
  store i32 %209, i32* %17, align 4
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %211 = load i32, i32* @WM8994_FLL1_CONTROL_2, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* @WM8994_FLL1_OUTDIV_MASK, align 4
  %215 = load i32, i32* @WM8994_FLL1_FRATIO_MASK, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %17, align 4
  %218 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %210, i32 %213, i32 %216, i32 %217)
  %219 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %220 = load i32, i32* @WM8994_FLL1_CONTROL_3, align 4
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* @WM8994_FLL1_K_MASK, align 4
  %224 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %219, i32 %222, i32 %223, i32 %225)
  %227 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %228 = load i32, i32* @WM8994_FLL1_CONTROL_4, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* @WM8994_FLL1_N_MASK, align 4
  %232 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @WM8994_FLL1_N_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %227, i32 %230, i32 %231, i32 %235)
  %237 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %200
  %241 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %242 = load i32, i32* @WM8958_FLL1_EFS_1, align 4
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* @WM8958_FLL1_LAMBDA_MASK, align 4
  %246 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %241, i32 %244, i32 %245, i32 %247)
  %249 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %250 = load i32, i32* @WM8958_FLL1_EFS_2, align 4
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32, i32* @WM8958_FLL1_EFS_ENA, align 4
  %254 = load i32, i32* @WM8958_FLL1_EFS_ENA, align 4
  %255 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %249, i32 %252, i32 %253, i32 %254)
  br label %263

256:                                              ; preds = %200
  %257 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %258 = load i32, i32* @WM8958_FLL1_EFS_2, align 4
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* @WM8958_FLL1_EFS_ENA, align 4
  %262 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %257, i32 %260, i32 %261, i32 0)
  br label %263

263:                                              ; preds = %256, %240
  %264 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %265 = load i32, i32* @WM8994_FLL1_CONTROL_5, align 4
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* @WM8994_FLL1_FRC_NCO, align 4
  %269 = load i32, i32* @WM8958_FLL1_BYP, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @WM8994_FLL1_REFCLK_DIV_MASK, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @WM8994_FLL1_REFCLK_SRC_MASK, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* %9, align 4
  %276 = icmp eq i32 %275, 131
  %277 = zext i1 %276 to i32
  %278 = load i32, i32* @WM8994_FLL1_FRC_NCO_SHIFT, align 4
  %279 = shl i32 %277, %278
  %280 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @WM8994_FLL1_REFCLK_DIV_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = or i32 %279, %283
  %285 = load i32, i32* %9, align 4
  %286 = sub nsw i32 %285, 1
  %287 = or i32 %284, %286
  %288 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %264, i32 %267, i32 %274, i32 %287)
  %289 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %290 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = call i32 @try_wait_for_completion(i32* %294)
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %373

298:                                              ; preds = %263
  %299 = load i32, i32* %22, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %321, label %301

301:                                              ; preds = %298
  %302 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %303 = call i32 @active_reference(%struct.snd_soc_component* %302)
  %304 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %305 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  switch i32 %306, label %319 [
    i32 135, label %307
    i32 136, label %310
  ]

307:                                              ; preds = %301
  %308 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %309 = call i32 @vmid_reference(%struct.snd_soc_component* %308)
  br label %320

310:                                              ; preds = %301
  %311 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %312 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %313, 1
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %317 = call i32 @vmid_reference(%struct.snd_soc_component* %316)
  br label %318

318:                                              ; preds = %315, %310
  br label %320

319:                                              ; preds = %301
  br label %320

320:                                              ; preds = %319, %318, %307
  br label %321

321:                                              ; preds = %320, %298
  %322 = load i32, i32* @WM8994_FLL1_ENA, align 4
  store i32 %322, i32* %17, align 4
  %323 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %16, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i32, i32* @WM8994_FLL1_FRAC, align 4
  %328 = load i32, i32* %17, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %17, align 4
  br label %330

330:                                              ; preds = %326, %321
  %331 = load i32, i32* %9, align 4
  %332 = icmp eq i32 %331, 131
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load i32, i32* @WM8994_FLL1_OSC_ENA, align 4
  %335 = load i32, i32* %17, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %17, align 4
  br label %337

337:                                              ; preds = %333, %330
  %338 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %339 = load i32, i32* @WM8994_FLL1_CONTROL_1, align 4
  %340 = load i32, i32* %14, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* @WM8994_FLL1_ENA, align 4
  %343 = load i32, i32* @WM8994_FLL1_OSC_ENA, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @WM8994_FLL1_FRAC, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* %17, align 4
  %348 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %338, i32 %341, i32 %346, i32 %347)
  %349 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %350 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %337
  %354 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %355 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = call i32 @msecs_to_jiffies(i32 10)
  %361 = call i64 @wait_for_completion_timeout(i32* %359, i32 %360)
  store i64 %361, i64* %21, align 8
  %362 = load i64, i64* %21, align 8
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %353
  %365 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %366 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @dev_warn(i32 %367, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %369

369:                                              ; preds = %364, %353
  br label %372

370:                                              ; preds = %337
  %371 = call i32 @msleep(i32 5)
  br label %372

372:                                              ; preds = %370, %369
  br label %397

373:                                              ; preds = %263
  %374 = load i32, i32* %22, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %396

376:                                              ; preds = %373
  %377 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %378 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  switch i32 %379, label %392 [
    i32 135, label %380
    i32 136, label %383
  ]

380:                                              ; preds = %376
  %381 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %382 = call i32 @vmid_dereference(%struct.snd_soc_component* %381)
  br label %393

383:                                              ; preds = %376
  %384 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  %385 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %390 = call i32 @vmid_dereference(%struct.snd_soc_component* %389)
  br label %391

391:                                              ; preds = %388, %383
  br label %393

392:                                              ; preds = %376
  br label %393

393:                                              ; preds = %392, %391, %380
  %394 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %395 = call i32 @active_dereference(%struct.snd_soc_component* %394)
  br label %396

396:                                              ; preds = %393, %373
  br label %397

397:                                              ; preds = %396, %372
  br label %398

398:                                              ; preds = %397, %186
  %399 = load i32, i32* %10, align 4
  %400 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %401 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %400, i32 0, i32 2
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = load i32, i32* %8, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 1
  store i32 %399, i32* %406, align 4
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %409 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %408, i32 0, i32 2
  %410 = load %struct.TYPE_2__*, %struct.TYPE_2__** %409, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i32 0, i32 2
  store i32 %407, i32* %414, align 4
  %415 = load i32, i32* %9, align 4
  %416 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %417 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %416, i32 0, i32 2
  %418 = load %struct.TYPE_2__*, %struct.TYPE_2__** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 0
  store i32 %415, i32* %422, align 4
  %423 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %424 = call i32 @configure_clock(%struct.snd_soc_component* %423)
  %425 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %426 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %431 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @max(i32 %429, i32 %434)
  %436 = icmp slt i32 %435, 50000
  br i1 %436, label %437, label %468

437:                                              ; preds = %398
  %438 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %439 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (i32, i8*, ...) @dev_dbg(i32 %440, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %442 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %443 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %444 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %442, i32 %443)
  %445 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %446 = and i32 %444, %445
  %447 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %448 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %447, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 0
  store i32 %446, i32* %450, align 4
  %451 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %452 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %453 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %451, i32 %452)
  %454 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %455 = and i32 %453, %454
  %456 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %457 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  store i32 %455, i32* %459, align 4
  %460 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %461 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %462 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %463 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %460, i32 %461, i32 %462, i32 1)
  %464 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %465 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %466 = load i32, i32* @WM8994_AIF2CLK_RATE_MASK, align 4
  %467 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %464, i32 %465, i32 %466, i32 1)
  br label %503

468:                                              ; preds = %398
  %469 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %470 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %469, i32 0, i32 0
  %471 = load i32*, i32** %470, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %502

475:                                              ; preds = %468
  %476 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %477 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %478 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %479 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %480 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 0
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %476, i32 %477, i32 %478, i32 %483)
  %485 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %486 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %487 = load i32, i32* @WM8994_AIF2CLK_RATE_MASK, align 4
  %488 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %489 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 1
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %485, i32 %486, i32 %487, i32 %492)
  %494 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %495 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %494, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 0
  store i32 0, i32* %497, align 4
  %498 = load %struct.wm8994_priv*, %struct.wm8994_priv** %12, align 8
  %499 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %498, i32 0, i32 0
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 1
  store i32 0, i32* %501, align 4
  br label %502

502:                                              ; preds = %475, %468
  br label %503

503:                                              ; preds = %502, %437
  store i32 0, i32* %6, align 4
  br label %504

504:                                              ; preds = %503, %156, %128, %97, %61, %47, %31
  %505 = load i32, i32* %6, align 4
  ret i32 %505
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8994_get_fll_config(%struct.wm8994*, %struct.fll_div*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @active_reference(%struct.snd_soc_component*) #1

declare dso_local i32 @vmid_reference(%struct.snd_soc_component*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vmid_dereference(%struct.snd_soc_component*) #1

declare dso_local i32 @active_dereference(%struct.snd_soc_component*) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
