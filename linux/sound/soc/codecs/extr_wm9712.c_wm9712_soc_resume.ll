; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9712.c_wm9712_soc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9712.c_wm9712_soc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9712_priv = type { i32 }

@WM9712_VENDOR_ID = common dso_local global i32 0, align 4
@WM9712_VENDOR_ID_MASK = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9712_soc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9712_soc_resume(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm9712_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm9712_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm9712_priv* %7, %struct.wm9712_priv** %4, align 8
  %8 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WM9712_VENDOR_ID, align 4
  %12 = load i32, i32* @WM9712_VENDOR_ID_MASK, align 4
  %13 = call i32 @snd_ac97_reset(i32 %10, i32 1, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %21 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @snd_soc_component_cache_sync(%struct.snd_soc_component* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.wm9712_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_ac97_reset(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_cache_sync(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
