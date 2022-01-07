; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8983_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@vol_update_regs = common dso_local global i32* null, align 8
@WM8983_LOUT1_HP_VOLUME_CTRL = common dso_local global i32 0, align 4
@WM8983_OUT4_MONO_MIX_CTRL = common dso_local global i32 0, align 4
@WM8983_DAC_CONTROL = common dso_local global i32 0, align 4
@WM8983_SOFTMUTE_MASK = common dso_local global i32 0, align 4
@WM8983_SOFTMUTE = common dso_local global i32 0, align 4
@WM8983_BIAS_CTRL = common dso_local global i32 0, align 4
@WM8983_BIASCUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8983_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8983_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = load i32, i32* @WM8983_SOFTWARE_RESET, align 4
  %8 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @vol_update_regs, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32*, i32** @vol_update_regs, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %30, i32 256, i32 256)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* @WM8983_LOUT1_HP_VOLUME_CTRL, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %45, %35
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WM8983_OUT4_MONO_MIX_CTRL, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 64, i32 64)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @WM8983_DAC_CONTROL, align 4
  %51 = load i32, i32* @WM8983_SOFTMUTE_MASK, align 4
  %52 = load i32, i32* @WM8983_SOFTMUTE, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @WM8983_BIAS_CTRL, align 4
  %56 = load i32, i32* @WM8983_BIASCUT, align 4
  %57 = load i32, i32* @WM8983_BIASCUT, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %48, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
