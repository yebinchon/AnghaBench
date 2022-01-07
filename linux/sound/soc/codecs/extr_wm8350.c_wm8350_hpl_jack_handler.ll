; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hpl_jack_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hpl_jack_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_data = type { %struct.TYPE_2__, %struct.wm8350* }
%struct.TYPE_2__ = type { i32 }
%struct.wm8350 = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"WM8350 HPL\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8350_hpl_jack_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_hpl_jack_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm8350_data*, align 8
  %6 = alloca %struct.wm8350*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wm8350_data*
  store %struct.wm8350_data* %8, %struct.wm8350_data** %5, align 8
  %9 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %10 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %9, i32 0, i32 1
  %11 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  store %struct.wm8350* %11, %struct.wm8350** %6, align 8
  %12 = call i32 @trace_snd_soc_jack_irq(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %14 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @device_may_wakeup(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %20 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_wakeup_event(i32 %21, i32 250)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @system_power_efficient_wq, align 4
  %25 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %26 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @msecs_to_jiffies(i32 200)
  %29 = call i32 @queue_delayed_work(i32 %24, i32* %27, i32 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %30
}

declare dso_local i32 @trace_snd_soc_jack_irq(i8*) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
