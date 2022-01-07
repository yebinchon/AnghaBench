; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hp_work.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }
%struct.wm8350_jack_data = type { i32, i32 }

@WM8350_JACK_PIN_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350_data*, %struct.wm8350_jack_data*, i32)* @wm8350_hp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_hp_work(%struct.wm8350_data* %0, %struct.wm8350_jack_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wm8350_data*, align 8
  %5 = alloca %struct.wm8350_jack_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8350*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm8350_data* %0, %struct.wm8350_data** %4, align 8
  store %struct.wm8350_jack_data* %1, %struct.wm8350_jack_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wm8350_data*, %struct.wm8350_data** %4, align 8
  %11 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %10, i32 0, i32 0
  %12 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  store %struct.wm8350* %12, %struct.wm8350** %7, align 8
  %13 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %14 = load i32, i32* @WM8350_JACK_PIN_STATUS, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %5, align 8
  %22 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %5, align 8
  %27 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %5, align 8
  %31 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_soc_jack_report(i32 %28, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
