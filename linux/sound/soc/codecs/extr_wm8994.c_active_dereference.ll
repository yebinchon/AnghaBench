; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_active_dereference.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_active_dereference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Active refcount decremented, now %d\0A\00", align 1
@WM1811_JACKDET_MODE_MIC = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_JACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @active_dereference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @active_dereference(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8994_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8994_priv* %6, %struct.wm8994_priv** %3, align 8
  %7 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %27 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %32 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @WM1811_JACKDET_MODE_MIC, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @WM1811_JACKDET_MODE_JACK, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %45 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
