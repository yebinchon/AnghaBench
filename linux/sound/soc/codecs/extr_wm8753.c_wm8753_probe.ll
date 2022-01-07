; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i64, i32 }

@wm8753_charge_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8753_LDAC = common dso_local global i32 0, align 4
@WM8753_RDAC = common dso_local global i32 0, align 4
@WM8753_LADC = common dso_local global i32 0, align 4
@WM8753_RADC = common dso_local global i32 0, align 4
@WM8753_LOUT1V = common dso_local global i32 0, align 4
@WM8753_ROUT1V = common dso_local global i32 0, align 4
@WM8753_LOUT2V = common dso_local global i32 0, align 4
@WM8753_ROUT2V = common dso_local global i32 0, align 4
@WM8753_LINVOL = common dso_local global i32 0, align 4
@WM8753_RINVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8753_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8753_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8753_priv* %7, %struct.wm8753_priv** %4, align 8
  %8 = load %struct.wm8753_priv*, %struct.wm8753_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %8, i32 0, i32 1
  %10 = load i32, i32* @wm8753_charge_work, align 4
  %11 = call i32 @INIT_DELAYED_WORK(i32* %9, i32 %10)
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call i32 @wm8753_reset(%struct.snd_soc_component* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.wm8753_priv*, %struct.wm8753_priv** %4, align 8
  %25 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @WM8753_LDAC, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 256, i32 256)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @WM8753_RDAC, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 256, i32 256)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @WM8753_LADC, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 256, i32 256)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @WM8753_RADC, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 256, i32 256)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @WM8753_LOUT1V, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 256, i32 256)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @WM8753_ROUT1V, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 256, i32 256)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* @WM8753_LOUT2V, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 256, i32 256)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @WM8753_ROUT2V, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 256, i32 256)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @WM8753_LINVOL, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 256, i32 256)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM8753_RINVOL, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 256, i32 256)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %23, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @wm8753_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
