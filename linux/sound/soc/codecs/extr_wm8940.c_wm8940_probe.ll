; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wm8940_setup_data* }
%struct.wm8940_setup_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@WM8940_POWER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@WM8940_OUTPUTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8940_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8940_setup_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.wm8940_setup_data*, %struct.wm8940_setup_data** %10, align 8
  store %struct.wm8940_setup_data* %11, %struct.wm8940_setup_data** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call i32 @wm8940_reset(%struct.snd_soc_component* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @dev_err(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %25 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @WM8940_POWER1, align 4
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 384)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %22
  %34 = load %struct.wm8940_setup_data*, %struct.wm8940_setup_data** %4, align 8
  %35 = icmp ne %struct.wm8940_setup_data* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @dev_warn(%struct.TYPE_3__* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %58

41:                                               ; preds = %33
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WM8940_OUTPUTCTL, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @WM8940_OUTPUTCTL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.wm8940_setup_data*, %struct.wm8940_setup_data** %4, align 8
  %49 = getelementptr inbounds %struct.wm8940_setup_data, %struct.wm8940_setup_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %31, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @wm8940_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
