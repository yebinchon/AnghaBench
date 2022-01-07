; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.axg_spdifin = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to enable pclk\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mode configuration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @axg_spdifin_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifin_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.axg_spdifin*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = call %struct.axg_spdifin* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.axg_spdifin* %7, %struct.axg_spdifin** %4, align 8
  %8 = load %struct.axg_spdifin*, %struct.axg_spdifin** %4, align 8
  %9 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %22 = load %struct.axg_spdifin*, %struct.axg_spdifin** %4, align 8
  %23 = call i32 @axg_spdifin_sample_mode_config(%struct.snd_soc_dai* %21, %struct.axg_spdifin* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.axg_spdifin*, %struct.axg_spdifin** %4, align 8
  %32 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %26, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.axg_spdifin* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @axg_spdifin_sample_mode_config(%struct.snd_soc_dai*, %struct.axg_spdifin*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
