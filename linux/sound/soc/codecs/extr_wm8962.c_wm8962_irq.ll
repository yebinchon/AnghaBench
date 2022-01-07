; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm8962_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Failed to resume: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM8962_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read interrupt mask: %d\0A\00", align 1
@WM8962_INTERRUPT_STATUS_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to read interrupt: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to ack interrupt: %d\0A\00", align 1
@WM8962_FLL_LOCK_EINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"FLL locked\0A\00", align 1
@WM8962_FIFOS_ERR_EINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"FIFO error\0A\00", align 1
@WM8962_TEMP_SHUT_EINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Thermal shutdown\0A\00", align 1
@WM8962_THERMAL_SHUTDOWN_STATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to read thermal status: %d\0A\00", align 1
@WM8962_TEMP_ERR_HP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Headphone thermal error\0A\00", align 1
@WM8962_TEMP_WARN_HP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Headphone thermal warning\0A\00", align 1
@WM8962_TEMP_ERR_SPK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Speaker thermal error\0A\00", align 1
@WM8962_TEMP_WARN_SPK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Speaker thermal warning\0A\00", align 1
@WM8962_MICSCD_EINT = common dso_local global i32 0, align 4
@WM8962_MICD_EINT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Microphone event detected\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8962_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wm8962_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.wm8962_priv* @dev_get_drvdata(%struct.device* %14)
  store %struct.wm8962_priv* %15, %struct.wm8962_priv** %7, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 @pm_runtime_get_sync(%struct.device* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %174

25:                                               ; preds = %2
  %26 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %27 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WM8962_INTERRUPT_STATUS_2_MASK, align 4
  %30 = call i32 (i32, i32, ...) @regmap_read(i32 %28, i32 %29, i32* %8)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @pm_runtime_put(%struct.device* %34)
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %174

40:                                               ; preds = %25
  %41 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %42 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WM8962_INTERRUPT_STATUS_2, align 4
  %45 = call i32 (i32, i32, ...) @regmap_read(i32 %43, i32 %44, i32* %9)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @pm_runtime_put(%struct.device* %49)
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %3, align 4
  br label %174

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @pm_runtime_put(%struct.device* %63)
  %65 = load i32, i32* @IRQ_NONE, align 4
  store i32 %65, i32* %3, align 4
  br label %174

66:                                               ; preds = %55
  %67 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %68 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WM8962_INTERRUPT_STATUS_2, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_warn(%struct.device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @WM8962_FLL_LOCK_EINT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @dev_dbg(%struct.device* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %88 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %87, i32 0, i32 2
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @WM8962_FIFOS_ERR_EINT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @WM8962_TEMP_SHUT_EINT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_crit(%struct.device* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %107 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WM8962_THERMAL_SHUTDOWN_STATUS, align 4
  %110 = call i32 (i32, i32, ...) @regmap_read(i32 %108, i32 %109, i32* %10)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @dev_warn(%struct.device* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %113, %103
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @WM8962_TEMP_ERR_HP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @dev_crit(%struct.device* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @WM8962_TEMP_WARN_HP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @dev_crit(%struct.device* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @WM8962_TEMP_ERR_SPK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i32 @dev_crit(%struct.device* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @WM8962_TEMP_WARN_SPK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %6, align 8
  %148 = call i32 @dev_crit(%struct.device* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %98
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @WM8962_MICSCD_EINT, align 4
  %153 = load i32, i32* @WM8962_MICD_EINT, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = call i32 @dev_dbg(%struct.device* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 @dev_name(%struct.device* %160)
  %162 = call i32 @trace_snd_soc_jack_irq(i32 %161)
  %163 = load %struct.device*, %struct.device** %6, align 8
  %164 = call i32 @pm_wakeup_event(%struct.device* %163, i32 300)
  %165 = load i32, i32* @system_power_efficient_wq, align 4
  %166 = load %struct.wm8962_priv*, %struct.wm8962_priv** %7, align 8
  %167 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %166, i32 0, i32 0
  %168 = call i32 @msecs_to_jiffies(i32 250)
  %169 = call i32 @queue_delayed_work(i32 %165, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %157, %150
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = call i32 @pm_runtime_put(%struct.device* %171)
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %62, %48, %33, %20
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.wm8962_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, ...) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_crit(%struct.device*, i8*) #1

declare dso_local i32 @trace_snd_soc_jack_irq(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @pm_wakeup_event(%struct.device*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
