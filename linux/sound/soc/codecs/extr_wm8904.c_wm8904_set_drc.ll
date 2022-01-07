; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_drc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_drc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i64, %struct.wm8904_pdata* }
%struct.wm8904_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@WM8904_DRC_0 = common dso_local global i64 0, align 8
@WM8904_DRC_REGS = common dso_local global i32 0, align 4
@WM8904_DRC_ENA = common dso_local global i32 0, align 4
@WM8904_DRC_DAC_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8904_set_drc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8904_set_drc(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8904_priv*, align 8
  %4 = alloca %struct.wm8904_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8904_priv* %8, %struct.wm8904_priv** %3, align 8
  %9 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %9, i32 0, i32 1
  %11 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %10, align 8
  store %struct.wm8904_pdata* %11, %struct.wm8904_pdata** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i64, i64* @WM8904_DRC_0, align 8
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i64 %13)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @WM8904_DRC_REGS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i64, i64* @WM8904_DRC_0, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %29 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i64 %24, i32 65535, i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %44 = load i64, i64* @WM8904_DRC_0, align 8
  %45 = load i32, i32* @WM8904_DRC_ENA, align 4
  %46 = load i32, i32* @WM8904_DRC_DAC_PATH, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i64 %44, i32 %47, i32 %48)
  ret void
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
