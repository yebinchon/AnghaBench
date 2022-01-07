; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_suspend_pre.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_suspend_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.bdw_rt5677_priv = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @bdw_rt5677_suspend_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_rt5677_suspend_pre(%struct.snd_soc_card* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.bdw_rt5677_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %2, align 8
  %5 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %6 = call %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %5)
  store %struct.bdw_rt5677_priv* %6, %struct.bdw_rt5677_priv** %3, align 8
  %7 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i64 %14)
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %4, align 8
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %17 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i64) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
