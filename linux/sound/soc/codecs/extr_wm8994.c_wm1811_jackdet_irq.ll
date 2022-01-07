; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_jackdet_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_jackdet_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8994_priv = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_4__, %struct.wm8994* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8994 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@WM1811_JACKDET_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read jack status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"JACKDET %x\0A\00", align 1
@WM1811_JACKDET_LVL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Jack detected\0A\00", align 1
@WM8958_MICBIAS2 = common dso_local global i32 0, align 4
@WM8958_MICB2_DISCH = common dso_local global i32 0, align 4
@WM1811_JACKDET_DB = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Jack not detected\0A\00", align 1
@WM8958_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8958_MICD_ENA = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_JACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"MICBIAS2\00", align 1
@SND_JACK_MECHANICAL = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm1811_jackdet_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1811_jackdet_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm8994_priv*, align 8
  %7 = alloca %struct.wm8994*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.snd_soc_dapm_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.wm8994_priv*
  store %struct.wm8994_priv* %14, %struct.wm8994_priv** %6, align 8
  %15 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %16 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %15, i32 0, i32 8
  %17 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  store %struct.wm8994* %17, %struct.wm8994** %7, align 8
  %18 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %8, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %22)
  store %struct.snd_soc_dapm_context* %23, %struct.snd_soc_dapm_context** %9, align 8
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_get_sync(i32 %26)
  %28 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %28, i32 0, i32 6
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %32 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %31, i32 0, i32 4
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = load i32, i32* @WM1811_JACKDET_CTRL, align 4
  %36 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %46 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %45, i32 0, i32 4
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pm_runtime_put(i32 %50)
  %52 = load i32, i32* @IRQ_NONE, align 4
  store i32 %52, i32* %3, align 4
  br label %174

53:                                               ; preds = %2
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @WM1811_JACKDET_LVL, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %53
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = load i32, i32* @WM8958_MICBIAS2, align 4
  %73 = load i32, i32* @WM8958_MICB2_DISCH, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %76 = load i32, i32* @WM1811_JACKDET_CTRL, align 4
  %77 = load i32, i32* @WM1811_JACKDET_DB, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %80 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @system_power_efficient_wq, align 4
  %84 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %85 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %84, i32 0, i32 5
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @msecs_to_jiffies(i32 %86)
  %88 = call i32 @queue_delayed_work(i32 %83, i32* %85, i32 %87)
  br label %118

89:                                               ; preds = %53
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %94, i32 0, i32 5
  %96 = call i32 @cancel_delayed_work_sync(i32* %95)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %98 = load i32, i32* @WM8958_MICBIAS2, align 4
  %99 = load i32, i32* @WM8958_MICB2_DISCH, align 4
  %100 = load i32, i32* @WM8958_MICB2_DISCH, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %103 = load i32, i32* @WM1811_JACKDET_CTRL, align 4
  %104 = load i32, i32* @WM1811_JACKDET_DB, align 4
  %105 = load i32, i32* @WM1811_JACKDET_DB, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %108 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %110 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %113 = load i32, i32* @WM8958_MICD_ENA, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 0)
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %116 = load i32, i32* @WM1811_JACKDET_MODE_JACK, align 4
  %117 = call i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component* %115, i32 %116)
  br label %118

118:                                              ; preds = %89, %64
  %119 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %120 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %119, i32 0, i32 4
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %123 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %9, align 8
  %132 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %127, %118
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %138 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %144 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %145 = call i32 @snd_soc_jack_report(i32 %142, i32 %143, i32 %144)
  br label %161

146:                                              ; preds = %133
  %147 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %148 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %154 = load i32, i32* @SND_JACK_HEADSET, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %157 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %155, %158
  %160 = call i32 @snd_soc_jack_report(i32 %152, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %146, %136
  %162 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %163 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @snd_soc_jack_report(i32 %167, i32 0, i32 0)
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %170 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pm_runtime_put(i32 %171)
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %161, %39
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @wm8958_micd_set_rate(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
