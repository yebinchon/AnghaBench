; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9768.c_max9768_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9768.c_max9768_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max9768 = type { i32, i32, i32 }

@MAX9768_FLAG_CLASSIC_PWM = common dso_local global i32 0, align 4
@MAX9768_CTRL = common dso_local global i32 0, align 4
@MAX9768_CTRL_PWM = common dso_local global i32 0, align 4
@max9768_mute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max9768_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9768_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.max9768*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.max9768* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max9768* %7, %struct.max9768** %4, align 8
  %8 = load %struct.max9768*, %struct.max9768** %4, align 8
  %9 = getelementptr inbounds %struct.max9768, %struct.max9768* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX9768_FLAG_CLASSIC_PWM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.max9768*, %struct.max9768** %4, align 8
  %16 = getelementptr inbounds %struct.max9768, %struct.max9768* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX9768_CTRL, align 4
  %19 = load i32, i32* @MAX9768_CTRL_PWM, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.max9768*, %struct.max9768** %4, align 8
  %28 = getelementptr inbounds %struct.max9768, %struct.max9768* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gpio_is_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @max9768_mute, align 4
  %35 = load i32, i32* @max9768_mute, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %33, i32 %34, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %26
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.max9768* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
