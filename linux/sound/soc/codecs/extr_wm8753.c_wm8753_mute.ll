; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i32 }

@WM8753_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8753_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8753_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = load i32, i32* @WM8753_DAC, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  %14 = and i32 %13, 65527
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8753_priv* %16, %struct.wm8753_priv** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = call i32 @snd_soc_component_is_active(%struct.snd_soc_component* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load i32, i32* @WM8753_DAC, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 8
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  br label %50

35:                                               ; preds = %19, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %40 = load i32, i32* @WM8753_DAC, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, 8
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %42)
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %46 = load i32, i32* @WM8753_DAC, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %34
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_is_active(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
