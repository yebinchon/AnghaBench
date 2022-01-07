; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_configure_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_configure_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8962_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"No SYSCLK configured\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No audio clocks configured\0A\00", align 1
@sysclk_rates = common dso_local global i32* null, align 8
@WM8962_SYSCLK_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported sysclk ratio %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Selected sysclk ratio %d\0A\00", align 1
@WM8962_CLOCKING_4 = common dso_local global i32 0, align 4
@WM8962_SYSCLK_RATE_MASK = common dso_local global i32 0, align 4
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@WM8962_CLOCKING2 = common dso_local global i32 0, align 4
@WM8962_SYSCLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8962_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8962_CLOCKING1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to read DSPCLK: %d\0A\00", align 1
@WM8962_DSPCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8962_DSPCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unknown DSPCLK divisor read back\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"DSPCLK is %dHz, BCLK %d\0A\00", align 1
@bclk_divs = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Selected BCLK_DIV %d for %dHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unsupported BCLK ratio %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Selected LRCLK divisor %d for %dHz\0A\00", align 1
@WM8962_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8962_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM8962_AIF_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8962_configure_bclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8962_configure_bclk(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8962_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8962_priv* %10, %struct.wm8962_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %261

20:                                               ; preds = %1
  %21 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %27 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %261

35:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** @sysclk_rates, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load i32*, i32** @sysclk_rates, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %48 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %51 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  %54 = icmp eq i32 %46, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @WM8962_SYSCLK_RATE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %36

65:                                               ; preds = %55, %36
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @sysclk_rates, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %75 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %78 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %76, %79
  %81 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %261

82:                                               ; preds = %65
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @sysclk_rates, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %93 = load i32, i32* @WM8962_CLOCKING_4, align 4
  %94 = load i32, i32* @WM8962_SYSCLK_RATE_MASK, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %98 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %97)
  %99 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %82
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %103 = load i32, i32* @WM8962_CLOCKING2, align 4
  %104 = load i32, i32* @WM8962_SYSCLK_ENA_MASK, align 4
  %105 = load i32, i32* @WM8962_SYSCLK_ENA, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %82
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %109 = load i32, i32* @WM8962_CLOCKING1, align 4
  %110 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %112 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %111)
  %113 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %117 = load i32, i32* @WM8962_CLOCKING2, align 4
  %118 = load i32, i32* @WM8962_SYSCLK_ENA_MASK, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 0)
  br label %120

120:                                              ; preds = %115, %107
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %125 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %261

129:                                              ; preds = %120
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @WM8962_DSPCLK_DIV_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @WM8962_DSPCLK_DIV_SHIFT, align 4
  %134 = ashr i32 %132, %133
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  switch i32 %135, label %150 [
    i32 0, label %136
    i32 1, label %140
    i32 2, label %145
  ]

136:                                              ; preds = %129
  %137 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %138 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %4, align 4
  br label %158

140:                                              ; preds = %129
  %141 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %142 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 2
  store i32 %144, i32* %4, align 4
  br label %158

145:                                              ; preds = %129
  %146 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %147 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 4
  store i32 %149, i32* %4, align 4
  br label %158

150:                                              ; preds = %129
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %152 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dev_warn(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %156 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %150, %145, %140, %136
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %160 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %164 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32 %165)
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %209, %158
  %168 = load i32, i32* %5, align 4
  %169 = load i32*, i32** @bclk_divs, align 8
  %170 = call i32 @ARRAY_SIZE(i32* %169)
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %167
  %173 = load i32*, i32** @bclk_divs, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %209

180:                                              ; preds = %172
  %181 = load i32, i32* %4, align 4
  %182 = load i32*, i32** @bclk_divs, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %181, %186
  %188 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %189 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %180
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %194 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** @bclk_divs, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %202 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, ...) @dev_dbg(i32 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %200, i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %6, align 4
  br label %212

208:                                              ; preds = %180
  br label %209

209:                                              ; preds = %208, %179
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %167

212:                                              ; preds = %192, %167
  %213 = load i32, i32* %5, align 4
  %214 = load i32*, i32** @bclk_divs, align 8
  %215 = call i32 @ARRAY_SIZE(i32* %214)
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %219 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %223 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %221, %224
  %226 = call i32 @dev_err(i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %225)
  br label %261

227:                                              ; preds = %212
  %228 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %229 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %232 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %230, %233
  %235 = load i32, i32* %8, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %8, align 4
  %237 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %238 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %241 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %244 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %242, %245
  %247 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %248 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, i8*, ...) @dev_dbg(i32 %239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %246, i32 %249)
  %251 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %252 = load i32, i32* @WM8962_CLOCKING2, align 4
  %253 = load i32, i32* @WM8962_BCLK_DIV_MASK, align 4
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %251, i32 %252, i32 %253, i32 %254)
  %256 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %257 = load i32, i32* @WM8962_AUDIO_INTERFACE_2, align 4
  %258 = load i32, i32* @WM8962_AIF_RATE_MASK, align 4
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %227, %217, %123, %70, %30, %15
  ret void
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
