; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i32 }

@WM8753_PWR1 = common dso_local global i32 0, align 4
@caps_charge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8753_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8753_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8753_priv* %8, %struct.wm8753_priv** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WM8753_PWR1, align 4
  %11 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %9, i32 %10)
  %12 = and i32 %11, 65086
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %53 [
    i32 130, label %14
    i32 129, label %20
    i32 128, label %24
    i32 131, label %46
  ]

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @WM8753_PWR1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 192
  %19 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %15, i32 %16, i32 %18)
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.wm8753_priv*, %struct.wm8753_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %21, i32 0, i32 0
  %23 = call i32 @flush_delayed_work(i32* %22)
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @WM8753_PWR1, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 449
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i32 %32)
  %34 = load %struct.wm8753_priv*, %struct.wm8753_priv** %5, align 8
  %35 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %34, i32 0, i32 0
  %36 = load i32, i32* @caps_charge, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @schedule_delayed_work(i32* %35, i32 %37)
  br label %45

39:                                               ; preds = %24
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @WM8753_PWR1, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 321
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.wm8753_priv*, %struct.wm8753_priv** %5, align 8
  %48 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %47, i32 0, i32 0
  %49 = call i32 @cancel_delayed_work_sync(i32* %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @WM8753_PWR1, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %2, %46, %45, %20, %14
  ret i32 0
}

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
