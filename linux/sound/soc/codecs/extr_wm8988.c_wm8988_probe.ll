; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@WM8988_RADC = common dso_local global i32 0, align 4
@WM8988_RDAC = common dso_local global i32 0, align 4
@WM8988_ROUT1V = common dso_local global i32 0, align 4
@WM8988_ROUT2V = common dso_local global i32 0, align 4
@WM8988_RINVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8988_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call i32 @wm8988_reset(%struct.snd_soc_component* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @WM8988_RADC, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 256, i32 256)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @WM8988_RDAC, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 256, i32 256)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load i32, i32* @WM8988_ROUT1V, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 256, i32 256)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WM8988_ROUT2V, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 256, i32 256)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i32, i32* @WM8988_RINVOL, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 256, i32 256)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %15, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @wm8988_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
