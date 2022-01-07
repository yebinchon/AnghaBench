; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_clk_sys_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_clk_sys_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Using %dHz MCLK\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Using %dHz MCLK with FLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"System clock not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @clk_sys_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sys_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm9081_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm9081_priv* %15, %struct.wm9081_priv** %9, align 8
  %16 = load %struct.wm9081_priv*, %struct.wm9081_priv** %9, align 8
  %17 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 129, label %27
  ]

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wm9081_priv*, %struct.wm9081_priv** %9, align 8
  %24 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wm9081_priv*, %struct.wm9081_priv** %9, align 8
  %32 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %27, %19
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %50 [
    i32 130, label %44
    i32 131, label %47
  ]

44:                                               ; preds = %42
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = call i32 @configure_clock(%struct.snd_soc_component* %45)
  br label %50

47:                                               ; preds = %42
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %49 = call i32 @wm9081_set_fll(%struct.snd_soc_component* %48, i32 0, i32 0, i32 0)
  br label %50

50:                                               ; preds = %42, %47, %44
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

declare dso_local i32 @wm9081_set_fll(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
