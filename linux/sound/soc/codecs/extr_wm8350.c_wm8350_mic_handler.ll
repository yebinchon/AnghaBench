; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_mic_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_mic_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_data = type { %struct.TYPE_2__, %struct.wm8350* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wm8350 = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"WM8350 mic\00", align 1
@WM8350_JACK_PIN_STATUS = common dso_local global i32 0, align 4
@WM8350_JACK_MICSCD_LVL = common dso_local global i32 0, align 4
@WM8350_JACK_MICSD_LVL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8350_mic_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_mic_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm8350_data*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wm8350_data*
  store %struct.wm8350_data* %10, %struct.wm8350_data** %5, align 8
  %11 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %12 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %11, i32 0, i32 1
  %13 = load %struct.wm8350*, %struct.wm8350** %12, align 8
  store %struct.wm8350* %13, %struct.wm8350** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 @trace_snd_soc_jack_irq(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %16 = load i32, i32* @WM8350_JACK_PIN_STATUS, align 4
  %17 = call i32 @wm8350_reg_read(%struct.wm8350* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WM8350_JACK_MICSCD_LVL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %24 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WM8350_JACK_MICSD_LVL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %36 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %43 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %48 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wm8350_data*, %struct.wm8350_data** %5, align 8
  %52 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %50, %54
  %56 = call i32 @snd_soc_jack_report(i32 %45, i32 %46, i32 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @trace_snd_soc_jack_irq(i8*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
