; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WM9081_ANALOGUE_LINEOUT = common dso_local global i32 0, align 4
@WM9081_LINEOUTZC = common dso_local global i32 0, align 4
@WM9081_ANALOGUE_SPEAKER_PGA = common dso_local global i32 0, align 4
@WM9081_SPKPGAZC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No ReTune Mobile data, using normal EQ\0A\00", align 1
@wm9081_eq_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9081_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm9081_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.wm9081_priv* %5, %struct.wm9081_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @WM9081_ANALOGUE_LINEOUT, align 4
  %8 = load i32, i32* @WM9081_LINEOUTZC, align 4
  %9 = load i32, i32* @WM9081_LINEOUTZC, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @WM9081_ANALOGUE_SPEAKER_PGA, align 4
  %13 = load i32, i32* @WM9081_SPKPGAZC, align 4
  %14 = load i32, i32* @WM9081_SPKPGAZC, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.wm9081_priv*, %struct.wm9081_priv** %3, align 8
  %17 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @wm9081_eq_controls, align 4
  %28 = load i32, i32* @wm9081_eq_controls, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
