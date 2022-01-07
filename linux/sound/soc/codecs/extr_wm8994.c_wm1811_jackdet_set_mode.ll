; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_jackdet_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_jackdet_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WM1811_JACKDET_MODE_AUDIO = common dso_local global i64 0, align 8
@WM1811_JACKDET_MODE_NONE = common dso_local global i64 0, align 8
@WM8994_ANTIPOP_2 = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i64)* @wm1811_jackdet_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm1811_jackdet_set_mode(%struct.snd_soc_component* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8994_priv* %7, %struct.wm8994_priv** %5, align 8
  %8 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %14 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12, %2
  br label %50

21:                                               ; preds = %12
  %22 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %23 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @WM1811_JACKDET_MODE_AUDIO, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %50

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @WM1811_JACKDET_MODE_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @WM1811_JACKDET_MODE_AUDIO, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %47 = load i32, i32* @WM1811_JACKDET_MODE_MASK, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %34, %20
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
