; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8825_REG_IRQ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read irq status\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@NAU8825_JACK_EJECTION_IRQ_MASK = common dso_local global i32 0, align 4
@NAU8825_JACK_EJECTION_DETECTED = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@NAU8825_KEY_SHORT_PRESS_IRQ = common dso_local global i32 0, align 4
@NAU8825_REG_INT_CLR_KEY_STATUS = common dso_local global i32 0, align 4
@NAU8825_BUTTONS = common dso_local global i32 0, align 4
@NAU8825_KEY_RELEASE_IRQ = common dso_local global i32 0, align 4
@NAU8825_HEADSET_COMPLETION_IRQ = common dso_local global i32 0, align 4
@NAU8825_XTALK_PREPARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Headset completion IRQ fired but no headset connected\0A\00", align 1
@NAU8825_IMPEDANCE_MEAS_IRQ = common dso_local global i32 0, align 4
@NAU8825_JACK_INSERTION_IRQ_MASK = common dso_local global i32 0, align 4
@NAU8825_JACK_INSERTION_DETECTED = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_DIS_CTRL = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@NAU8825_XTALK_DONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nau8825_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nau8825*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.nau8825*
  store %struct.nau8825* %15, %struct.nau8825** %6, align 8
  %16 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %17 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %16, i32 0, i32 10
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = load i32, i32* @NAU8825_REG_IRQ_STATUS, align 4
  %21 = call i64 @regmap_read(%struct.regmap* %19, i32 %20, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %25 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %239

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NAU8825_JACK_EJECTION_IRQ_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @NAU8825_JACK_EJECTION_DETECTED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %37 = call i32 @nau8825_eject_jack(%struct.nau8825* %36)
  %38 = load i32, i32* @SND_JACK_HEADSET, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @NAU8825_JACK_EJECTION_IRQ_MASK, align 4
  store i32 %41, i32* %9, align 4
  br label %212

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NAU8825_KEY_SHORT_PRESS_IRQ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.regmap*, %struct.regmap** %7, align 8
  %49 = load i32, i32* @NAU8825_REG_INT_CLR_KEY_STATUS, align 4
  %50 = call i64 @regmap_read(%struct.regmap* %48, i32 %49, i32* %12)
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @nau8825_button_decode(i32 %52)
  %54 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %55 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %57 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @NAU8825_BUTTONS, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @NAU8825_KEY_SHORT_PRESS_IRQ, align 4
  store i32 %64, i32* %9, align 4
  br label %211

65:                                               ; preds = %42
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NAU8825_KEY_RELEASE_IRQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @NAU8825_BUTTONS, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @NAU8825_KEY_RELEASE_IRQ, align 4
  store i32 %72, i32* %9, align 4
  br label %210

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @NAU8825_HEADSET_COMPLETION_IRQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %162

78:                                               ; preds = %73
  %79 = load %struct.regmap*, %struct.regmap** %7, align 8
  %80 = call i64 @nau8825_is_jack_inserted(%struct.regmap* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %137

82:                                               ; preds = %78
  %83 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %84 = call i32 @nau8825_jack_insert(%struct.nau8825* %83)
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %88 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %82
  %92 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %93 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %91
  %97 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %98 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %96
  %102 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %103 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %105 = call i32 @nau8825_sema_acquire(%struct.nau8825* %104, i32 0)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %110 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %101
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %114 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i64, i64* @NAU8825_XTALK_PREPARE, align 8
  %119 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %120 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %122 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %121, i32 0, i32 6
  %123 = call i32 @schedule_work(i32* %122)
  br label %124

124:                                              ; preds = %117, %112
  br label %136

125:                                              ; preds = %91, %82
  %126 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %127 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %132 = call i32 @nau8825_sema_release(%struct.nau8825* %131)
  %133 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %134 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %124
  br label %144

137:                                              ; preds = %78
  %138 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %139 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_warn(i32 %140, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %143 = call i32 @nau8825_eject_jack(%struct.nau8825* %142)
  br label %144

144:                                              ; preds = %137, %136
  %145 = load i32, i32* @SND_JACK_HEADSET, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @NAU8825_HEADSET_COMPLETION_IRQ, align 4
  store i32 %148, i32* %9, align 4
  %149 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %150 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NAU8825_XTALK_PREPARE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %144
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %157 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %160 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %154, %144
  br label %209

162:                                              ; preds = %73
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @NAU8825_IMPEDANCE_MEAS_IRQ, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %169 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %174 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %179 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %178, i32 0, i32 6
  %180 = call i32 @schedule_work(i32* %179)
  br label %181

181:                                              ; preds = %177, %172, %167
  %182 = load i32, i32* @NAU8825_IMPEDANCE_MEAS_IRQ, align 4
  store i32 %182, i32* %9, align 4
  br label %208

183:                                              ; preds = %162
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @NAU8825_JACK_INSERTION_IRQ_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @NAU8825_JACK_INSERTION_DETECTED, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %183
  %190 = load %struct.regmap*, %struct.regmap** %7, align 8
  %191 = call i64 @nau8825_is_jack_inserted(%struct.regmap* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load %struct.regmap*, %struct.regmap** %7, align 8
  %195 = load i32, i32* @NAU8825_REG_INTERRUPT_DIS_CTRL, align 4
  %196 = load i32, i32* @NAU8825_IRQ_INSERT_DIS, align 4
  %197 = load i32, i32* @NAU8825_IRQ_INSERT_DIS, align 4
  %198 = call i32 @regmap_update_bits(%struct.regmap* %194, i32 %195, i32 %196, i32 %197)
  %199 = load %struct.regmap*, %struct.regmap** %7, align 8
  %200 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %201 = load i32, i32* @NAU8825_IRQ_INSERT_EN, align 4
  %202 = load i32, i32* @NAU8825_IRQ_INSERT_EN, align 4
  %203 = call i32 @regmap_update_bits(%struct.regmap* %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %205 = call i32 @nau8825_setup_auto_irq(%struct.nau8825* %204)
  br label %206

206:                                              ; preds = %193, %189
  br label %207

207:                                              ; preds = %206, %183
  br label %208

208:                                              ; preds = %207, %181
  br label %209

209:                                              ; preds = %208, %161
  br label %210

210:                                              ; preds = %209, %70
  br label %211

211:                                              ; preds = %210, %47
  br label %212

212:                                              ; preds = %211, %35
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %215, %212
  %218 = load %struct.regmap*, %struct.regmap** %7, align 8
  %219 = load i32, i32* @NAU8825_REG_INT_CLR_KEY_STATUS, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @regmap_write(%struct.regmap* %218, i32 %219, i32 %220)
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %217
  %225 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %226 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @NAU8825_XTALK_DONE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %224
  %231 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %232 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @snd_soc_jack_report(i32 %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %224, %217
  %238 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %237, %23
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i64 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nau8825_eject_jack(%struct.nau8825*) #1

declare dso_local i32 @nau8825_button_decode(i32) #1

declare dso_local i64 @nau8825_is_jack_inserted(%struct.regmap*) #1

declare dso_local i32 @nau8825_jack_insert(%struct.nau8825*) #1

declare dso_local i32 @nau8825_sema_acquire(%struct.nau8825*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nau8825_sema_release(%struct.nau8825*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8825_setup_auto_irq(%struct.nau8825*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
