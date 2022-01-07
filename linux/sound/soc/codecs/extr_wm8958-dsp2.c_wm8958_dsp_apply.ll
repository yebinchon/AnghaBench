; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i64*, i64*, i64*, i64*, i64* }

@WM8994_POWER_MANAGEMENT_5 = common dso_local global i32 0, align 4
@WM8994_AIF1DAC1L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC1R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC2L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC2R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF2DACL_ENA = common dso_local global i32 0, align 4
@WM8994_AIF2DACR_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid path %d\0A\00", align 1
@WM8958_DSP2_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"DSP path %d %d startup: %d, power: %x, DSP: %x\0A\00", align 1
@WM8958_DSP2_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF2_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8958_DSP2CLK_SRC = common dso_local global i32 0, align 4
@WM8958_DSP2CLK_ENA = common dso_local global i32 0, align 4
@WM8958_DSP2CLK_SRC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DSP running in path %d\0A\00", align 1
@WM8958_DSP2_CONFIG = common dso_local global i32 0, align 4
@WM8958_MBC_ENA = common dso_local global i32 0, align 4
@WM8958_DSP2_EXECCONTROL = common dso_local global i32 0, align 4
@WM8958_DSP2_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DSP stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @wm8958_dsp_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_dsp_apply(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8994_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8994_priv* %13, %struct.wm8994_priv** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %36 [
    i32 0, label %18
    i32 1, label %24
    i32 2, label %30
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @WM8994_AIF1DAC1L_ENA, align 4
  %20 = load i32, i32* @WM8994_AIF1DAC1R_ENA, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %26 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* @WM8994_AIF2DACL_ENA, align 4
  %32 = load i32, i32* @WM8994_AIF2DACR_ENA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %248

39:                                               ; preds = %30, %24, %18
  %40 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %41 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %39
  %49 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %50 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %48
  %58 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %57
  %67 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %68 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %77 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %75, %66, %57, %48, %39
  %85 = phi i1 [ true, %66 ], [ true, %57 ], [ true, %48 ], [ true, %39 ], [ %83, %75 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %92 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %93 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %99 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %210

107:                                              ; preds = %90
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %210

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %248

116:                                              ; preds = %110
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %118 = load i32, i32* @WM8994_AIF1_CLOCKING_1, align 4
  %119 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %117, i32 %118)
  %120 = load i32, i32* @WM8994_AIF1CLK_ENA_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %116
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %125 = load i32, i32* @WM8994_AIF2_CLOCKING_1, align 4
  %126 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %124, i32 %125)
  %127 = load i32, i32* @WM8994_AIF2CLK_ENA_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  br label %248

131:                                              ; preds = %123, %116
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %133 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %134 = load i32, i32* @WM8958_DSP2CLK_SRC, align 4
  %135 = load i32, i32* @WM8958_DSP2CLK_ENA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @WM8958_DSP2CLK_SRC_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* @WM8958_DSP2CLK_ENA, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %136, i32 %141)
  %143 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %144 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %143, i32 0, i32 5
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %131
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @wm8958_dsp_start_enh_eq(%struct.snd_soc_component* %152, i32 %153)
  br label %201

155:                                              ; preds = %131
  %156 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %157 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %156, i32 0, i32 4
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %182, label %164

164:                                              ; preds = %155
  %165 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %166 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %164
  %174 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %175 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173, %164, %155
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @wm8958_dsp_start_vss(%struct.snd_soc_component* %183, i32 %184)
  br label %200

186:                                              ; preds = %173
  %187 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %188 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @wm8958_dsp_start_mbc(%struct.snd_soc_component* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %186
  br label %200

200:                                              ; preds = %199, %182
  br label %201

201:                                              ; preds = %200, %151
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %204 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %206 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (i32, i8*, ...) @dev_dbg(i32 %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %201, %107, %90
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %248, label %213

213:                                              ; preds = %210
  %214 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %215 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %213
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %248

225:                                              ; preds = %219
  %226 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %227 = load i32, i32* @WM8958_DSP2_CONFIG, align 4
  %228 = load i32, i32* @WM8958_MBC_ENA, align 4
  %229 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %226, i32 %227, i32 %228, i32 0)
  %230 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %231 = load i32, i32* @WM8958_DSP2_EXECCONTROL, align 4
  %232 = load i32, i32* @WM8958_DSP2_STOP, align 4
  %233 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %230, i32 %231, i32 %232)
  %234 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %235 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %236 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %237 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %234, i32 %235, i32 %236, i32 0)
  %238 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %239 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %240 = load i32, i32* @WM8958_DSP2CLK_ENA, align 4
  %241 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %238, i32 %239, i32 %240, i32 0)
  %242 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %243 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %242, i32 0, i32 0
  store i32 -1, i32* %243, align 8
  %244 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %245 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32, i8*, ...) @dev_dbg(i32 %246, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %248

248:                                              ; preds = %36, %115, %130, %224, %225, %213, %210
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8958_dsp_start_enh_eq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8958_dsp_start_vss(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8958_dsp_start_mbc(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
