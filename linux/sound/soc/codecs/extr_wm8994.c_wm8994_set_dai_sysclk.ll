; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"AIF%d using MCLK1 at %uHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"AIF%d using MCLK2 at %uHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AIF%d using FLL1\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AIF%d using FLL2\0A\00", align 1
@opclk_divs = common dso_local global i32* null, align 8
@WM8994_CLOCKING_2 = common dso_local global i32 0, align 4
@WM8994_OPCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8994_OPCLK_ENA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Configuring AIFs for 128fs\0A\00", align 1
@WM8994_AIF1_RATE = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_RATE_MASK = common dso_local global i32 0, align 4
@WM8994_AIF2_RATE = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8994_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8994_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8994_priv* %17, %struct.wm8994_priv** %11, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %22 [
    i32 1, label %21
    i32 2, label %21
  ]

21:                                               ; preds = %4, %4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %239

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %154 [
    i32 130, label %27
    i32 129, label %50
    i32 132, label %73
    i32 131, label %90
    i32 128, label %107
  ]

27:                                               ; preds = %25
  %28 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %29 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32 130, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %39 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %157

50:                                               ; preds = %25
  %51 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %52 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 129, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %62 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %157

73:                                               ; preds = %25
  %74 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %75 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 132, i32* %82, align 4
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %157

90:                                               ; preds = %25
  %91 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %92 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  store i32 131, i32* %99, align 4
  %100 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %157

107:                                              ; preds = %25
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %148

110:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32*, i32** @opclk_divs, align 8
  %114 = call i32 @ARRAY_SIZE(i32* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load i32*, i32** @opclk_divs, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %129

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %111

129:                                              ; preds = %124, %111
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** @opclk_divs, align 8
  %132 = call i32 @ARRAY_SIZE(i32* %131)
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %239

137:                                              ; preds = %129
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %139 = load i32, i32* @WM8994_CLOCKING_2, align 4
  %140 = load i32, i32* @WM8994_OPCLK_DIV_MASK, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %144 = load i32, i32* @WM8994_POWER_MANAGEMENT_2, align 4
  %145 = load i32, i32* @WM8994_OPCLK_ENA, align 4
  %146 = load i32, i32* @WM8994_OPCLK_ENA, align 4
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %145, i32 %146)
  br label %153

148:                                              ; preds = %107
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %150 = load i32, i32* @WM8994_POWER_MANAGEMENT_2, align 4
  %151 = load i32, i32* @WM8994_OPCLK_ENA, align 4
  %152 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %149, i32 %150, i32 %151, i32 0)
  br label %153

153:                                              ; preds = %148, %137
  br label %157

154:                                              ; preds = %25
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %239

157:                                              ; preds = %153, %90, %73, %50, %27
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %159 = call i32 @configure_clock(%struct.snd_soc_component* %158)
  %160 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %161 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %166 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @max(i32 %164, i32 %169)
  %171 = icmp slt i32 %170, 50000
  br i1 %171, label %172, label %203

172:                                              ; preds = %157
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %174 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @dev_dbg(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %178 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %179 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %177, i32 %178)
  %180 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %183 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %181, i32* %185, align 4
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %187 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %188 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %186, i32 %187)
  %189 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %190 = and i32 %188, %189
  %191 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %192 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 %190, i32* %194, align 4
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %196 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %197 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %198 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %195, i32 %196, i32 %197, i32 1)
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %200 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %201 = load i32, i32* @WM8994_AIF2CLK_RATE_MASK, align 4
  %202 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %199, i32 %200, i32 %201, i32 1)
  br label %238

203:                                              ; preds = %157
  %204 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %205 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %237

210:                                              ; preds = %203
  %211 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %212 = load i32, i32* @WM8994_AIF1_RATE, align 4
  %213 = load i32, i32* @WM8994_AIF1CLK_RATE_MASK, align 4
  %214 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %215 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %211, i32 %212, i32 %213, i32 %218)
  %220 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %221 = load i32, i32* @WM8994_AIF2_RATE, align 4
  %222 = load i32, i32* @WM8994_AIF2CLK_RATE_MASK, align 4
  %223 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %224 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %220, i32 %221, i32 %222, i32 %227)
  %229 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %230 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 0, i32* %232, align 4
  %233 = load %struct.wm8994_priv*, %struct.wm8994_priv** %11, align 8
  %234 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %210, %203
  br label %238

238:                                              ; preds = %237, %172
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %154, %134, %22
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
