; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8994_priv = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8958_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8958_MICD_ENA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WM8958_MIC_DETECT_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read mic detect status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM8958_MICD_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Mic detect data not valid\0A\00", align 1
@WM8958_MICD_STS = common dso_local global i32 0, align 4
@WM8958_MICD_LVL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"No impedance range reported for jack\0A\00", align 1
@WM1811_JACKDET_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read jack status: %d\0A\00", align 1
@WM1811_JACKDET_LVL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Ignoring removed jack\0A\00", align 1
@SND_JACK_MECHANICAL = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8958_mic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8958_mic_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm8994_priv*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.wm8994_priv*
  store %struct.wm8994_priv* %13, %struct.wm8994_priv** %6, align 8
  %14 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %15 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %7, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  %21 = load i32, i32* @WM8958_MICD_ENA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %178

26:                                               ; preds = %2
  %27 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %27, i32 0, i32 3
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %30, i32 0, i32 7
  %32 = call i32 @cancel_delayed_work_sync(i32* %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  store i32 10, i32* %9, align 4
  br label %37

37:                                               ; preds = %77, %26
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @WM8958_MIC_DETECT_3, align 4
  %40 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pm_runtime_put(i32 %51)
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %178

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @WM8958_MICD_VALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %172

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @WM8958_MICD_STS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @WM8958_MICD_LVL_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64
  br label %81

75:                                               ; preds = %69
  %76 = call i32 @msleep(i32 1)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %37, label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %86 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_name(i32 %92)
  %94 = call i32 @trace_snd_soc_jack_irq(i32 %93)
  %95 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %96 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %89
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %101 = load i32, i32* @WM1811_JACKDET_CTRL, align 4
  %102 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %107 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %122

111:                                              ; preds = %99
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @WM1811_JACKDET_LVL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %118 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_dbg(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %172

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %105
  br label %146

123:                                              ; preds = %89
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @WM8958_MICD_STS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  %129 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %130 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %129, i32 0, i32 5
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %136 = load i32, i32* @SND_JACK_HEADSET, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %139 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %137, %140
  %142 = call i32 @snd_soc_jack_report(i32 %134, i32 0, i32 %141)
  %143 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %144 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %172

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %122
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %149 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %151 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %150, i32 0, i32 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %11, align 4
  %156 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %157 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %146
  %161 = load i32, i32* @system_power_efficient_wq, align 4
  %162 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %163 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %162, i32 0, i32 3
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @msecs_to_jiffies(i32 %164)
  %166 = call i32 @queue_delayed_work(i32 %161, i32* %163, i32 %165)
  br label %171

167:                                              ; preds = %146
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @wm8958_button_det(%struct.snd_soc_component* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %160
  br label %172

172:                                              ; preds = %171, %128, %116, %59
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %174 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @pm_runtime_put(i32 %175)
  %177 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %172, %43, %24
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @trace_snd_soc_jack_irq(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm8958_button_det(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
