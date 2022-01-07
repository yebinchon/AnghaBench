; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da7219_aad_priv = type { i32, i32, i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.da7219_priv = type { i32, i32 }

@DA7219_AAD_IRQ_REG_MAX = common dso_local global i32 0, align 4
@DA7219_ACCDET_IRQ_EVENT_A = common dso_local global i32 0, align 4
@DA7219_AAD_IRQ_REG_A = common dso_local global i64 0, align 8
@DA7219_AAD_IRQ_REG_B = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@DA7219_ACCDET_STATUS_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IRQ events = 0x%x|0x%x, status = 0x%x\0A\00", align 1
@DA7219_JACK_INSERTION_STS_MASK = common dso_local global i32 0, align 4
@DA7219_E_JACK_INSERTED_MASK = common dso_local global i32 0, align 4
@SND_JACK_MECHANICAL = common dso_local global i32 0, align 4
@DA7219_E_JACK_DETECT_COMPLETE_MASK = common dso_local global i32 0, align 4
@DA7219_JACK_TYPE_STS_MASK = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@DA7219_AAD_MAX_BUTTONS = common dso_local global i32 0, align 4
@DA7219_E_BUTTON_A_PRESSED_MASK = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@DA7219_E_BUTTON_A_RELEASED_MASK = common dso_local global i32 0, align 4
@DA7219_E_JACK_REMOVED_MASK = common dso_local global i32 0, align 4
@DA7219_AAD_REPORT_ALL_MASK = common dso_local global i32 0, align 4
@DA7219_HP_R_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_R_AMP_OE_MASK = common dso_local global i32 0, align 4
@DA7219_HP_L_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_L_AMP_OE_MASK = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_BUTTON_CONFIG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da7219_aad_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_aad_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.da7219_aad_priv*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.da7219_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.da7219_aad_priv*
  store %struct.da7219_aad_priv* %18, %struct.da7219_aad_priv** %6, align 8
  %19 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %20 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %19, i32 0, i32 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %7, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %22)
  store %struct.snd_soc_dapm_context* %23, %struct.snd_soc_dapm_context** %8, align 8
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %25 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %24)
  store %struct.da7219_priv* %25, %struct.da7219_priv** %9, align 8
  %26 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %31 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DA7219_ACCDET_IRQ_EVENT_A, align 4
  %34 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %35 = call i32 @regmap_bulk_read(i32 %32, i32 %33, i32* %29, i32 %34)
  %36 = load i64, i64* @DA7219_AAD_IRQ_REG_A, align 8
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load i64, i64* @DA7219_AAD_IRQ_REG_B, align 8
  %42 = getelementptr inbounds i32, i32* %29, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %235

47:                                               ; preds = %40, %2
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = load i32, i32* @DA7219_ACCDET_STATUS_A, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %52 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DA7219_ACCDET_IRQ_EVENT_A, align 4
  %55 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %56 = call i32 @regmap_bulk_write(i32 %53, i32 %54, i32* %29, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @DA7219_AAD_IRQ_REG_A, align 8
  %61 = getelementptr inbounds i32, i32* %29, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @DA7219_AAD_IRQ_REG_B, align 8
  %64 = getelementptr inbounds i32, i32* %29, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @DA7219_JACK_INSERTION_STS_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %189

72:                                               ; preds = %47
  %73 = load i64, i64* @DA7219_AAD_IRQ_REG_A, align 8
  %74 = getelementptr inbounds i32, i32* %29, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DA7219_E_JACK_INSERTED_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %87 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %79, %72
  %89 = load i64, i64* @DA7219_AAD_IRQ_REG_A, align 8
  %90 = getelementptr inbounds i32, i32* %29, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DA7219_E_JACK_DETECT_COMPLETE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @DA7219_JACK_TYPE_STS_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i32, i32* @SND_JACK_HEADSET, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @SND_JACK_HEADSET, align 4
  %105 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %110 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %109, i32 0, i32 3
  %111 = call i32 @schedule_work(i32* %110)
  br label %116

112:                                              ; preds = %95
  %113 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %114 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %113, i32 0, i32 2
  %115 = call i32 @schedule_work(i32* %114)
  br label %116

116:                                              ; preds = %112, %100
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @DA7219_JACK_TYPE_STS_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %188

122:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %148, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @DA7219_AAD_MAX_BUTTONS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %123
  %128 = load i64, i64* @DA7219_AAD_IRQ_REG_B, align 8
  %129 = getelementptr inbounds i32, i32* %29, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DA7219_E_BUTTON_A_PRESSED_MASK, align 4
  %132 = load i32, i32* %13, align 4
  %133 = shl i32 %131, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %127
  %137 = load i32, i32* @SND_JACK_BTN_0, align 4
  %138 = load i32, i32* %13, align 4
  %139 = ashr i32 %137, %138
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* @SND_JACK_BTN_0, align 4
  %143 = load i32, i32* %13, align 4
  %144 = ashr i32 %142, %143
  %145 = load i32, i32* %15, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %136, %127
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %153 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @snd_soc_jack_report(i32 %154, i32 %155, i32 %156)
  store i32 0, i32* %13, align 4
  br label %158

158:                                              ; preds = %184, %151
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @DA7219_AAD_MAX_BUTTONS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %158
  %163 = load i64, i64* @DA7219_AAD_IRQ_REG_B, align 8
  %164 = getelementptr inbounds i32, i32* %29, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DA7219_E_BUTTON_A_RELEASED_MASK, align 4
  %167 = load i32, i32* %13, align 4
  %168 = ashr i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %162
  %172 = load i32, i32* @SND_JACK_BTN_0, align 4
  %173 = load i32, i32* %13, align 4
  %174 = ashr i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %14, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* @SND_JACK_BTN_0, align 4
  %179 = load i32, i32* %13, align 4
  %180 = ashr i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %171, %162
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %158

187:                                              ; preds = %158
  br label %188

188:                                              ; preds = %187, %117
  br label %227

189:                                              ; preds = %47
  %190 = load i64, i64* @DA7219_AAD_IRQ_REG_A, align 8
  %191 = getelementptr inbounds i32, i32* %29, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @DA7219_E_JACK_REMOVED_MASK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %226

196:                                              ; preds = %189
  store i32 0, i32* %14, align 4
  %197 = load i32, i32* @DA7219_AAD_REPORT_ALL_MASK, align 4
  %198 = load i32, i32* %15, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %15, align 4
  %200 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %201 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %203 = load i32, i32* @DA7219_HP_R_CTRL, align 4
  %204 = load i32, i32* @DA7219_HP_R_AMP_OE_MASK, align 4
  %205 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %202, i32 %203, i32 %204, i32 0)
  %206 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %207 = load i32, i32* @DA7219_HP_L_CTRL, align 4
  %208 = load i32, i32* @DA7219_HP_L_AMP_OE_MASK, align 4
  %209 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %206, i32 %207, i32 %208, i32 0)
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %211 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %212 = load i32, i32* @DA7219_BUTTON_CONFIG_MASK, align 4
  %213 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %210, i32 %211, i32 %212, i32 0)
  %214 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %215 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %214, i32 0, i32 0
  store i32 0, i32* %215, align 4
  %216 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %217 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %218 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %219 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %218)
  %220 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %221 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %220, i32 0, i32 3
  %222 = call i32 @cancel_work_sync(i32* %221)
  %223 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %224 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %223, i32 0, i32 2
  %225 = call i32 @cancel_work_sync(i32* %224)
  br label %226

226:                                              ; preds = %196, %189
  br label %227

227:                                              ; preds = %226, %188
  %228 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %6, align 8
  %229 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @snd_soc_jack_report(i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %234, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %235

235:                                              ; preds = %227, %45
  %236 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %236)
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
