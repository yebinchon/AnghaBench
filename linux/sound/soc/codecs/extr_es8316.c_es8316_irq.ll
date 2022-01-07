; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es8316_priv = type { i32, %struct.TYPE_2__*, i64, i32, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }

@ES8316_GPIO_FLAG = common dso_local global i32 0, align 4
@ES8316_GPIO_FLAG_HP_NOT_INSERTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gpio flags %#04x\0A\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"jack unplugged\0A\00", align 1
@ES8316_GPIO_FLAG_GM_NOT_SHORTED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @es8316_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.es8316_priv*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.es8316_priv*
  store %struct.es8316_priv* %9, %struct.es8316_priv** %5, align 8
  %10 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %11 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %10, i32 0, i32 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %14 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %17 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ES8316_GPIO_FLAG, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %7)
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %175

24:                                               ; preds = %2
  %25 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %26 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %175

30:                                               ; preds = %24
  %31 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %32 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ES8316_GPIO_FLAG_HP_NOT_INSERTED, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ES8316_GPIO_FLAG_HP_NOT_INSERTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %39
  %50 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %51 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %60 = call i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %59)
  br label %61

61:                                               ; preds = %58, %49
  %62 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %63 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %72 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* @SND_JACK_HEADSET, align 4
  %75 = load i32, i32* @SND_JACK_BTN_0, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %73, i32 0, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %70, %61
  br label %174

83:                                               ; preds = %39
  %84 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %85 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %144, label %92

92:                                               ; preds = %83
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %94 = call i32 @es8316_enable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %93)
  %95 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %96 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ES8316_GPIO_FLAG, align 4
  %99 = call i32 @regmap_read(i32 %97, i32 %98, i32* %7)
  %100 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %101 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load i32, i32* @ES8316_GPIO_FLAG_HP_NOT_INSERTED, align 4
  %106 = load i32, i32* %7, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %110 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @ES8316_GPIO_FLAG_HP_NOT_INSERTED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %120 = call i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %119)
  br label %143

121:                                              ; preds = %108
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @ES8316_GPIO_FLAG_GM_NOT_SHORTED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %128 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* @SND_JACK_HEADSET, align 4
  %131 = load i32, i32* @SND_JACK_HEADSET, align 4
  %132 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %129, i32 %130, i32 %131)
  br label %142

133:                                              ; preds = %121
  %134 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %135 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %138 = load i32, i32* @SND_JACK_HEADSET, align 4
  %139 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %136, i32 %137, i32 %138)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %141 = call i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %140)
  br label %142

142:                                              ; preds = %133, %126
  br label %143

143:                                              ; preds = %142, %118
  br label %173

144:                                              ; preds = %83
  %145 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %146 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @ES8316_GPIO_FLAG_GM_NOT_SHORTED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %160 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* @SND_JACK_BTN_0, align 4
  %163 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %161, i32 0, i32 %162)
  br label %171

164:                                              ; preds = %153
  %165 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %166 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* @SND_JACK_BTN_0, align 4
  %169 = load i32, i32* @SND_JACK_BTN_0, align 4
  %170 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %164, %158
  br label %172

172:                                              ; preds = %171, %144
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %82
  br label %175

175:                                              ; preds = %174, %29, %23
  %176 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %177 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %179
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_report(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @es8316_enable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
