; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32 }

@wm8904_dai = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8904_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8904_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8904_priv* %6, %struct.wm8904_priv** %4, align 8
  %7 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %8 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %13 [
    i32 129, label %10
    i32 128, label %11
  ]

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wm8904_dai, i32 0, i32 0), i32 0, i32 4)
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %11, %10
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = call i32 @wm8904_handle_pdata(%struct.snd_soc_component* %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = call i32 @wm8904_add_widgets(%struct.snd_soc_component* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8904_handle_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8904_add_widgets(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
