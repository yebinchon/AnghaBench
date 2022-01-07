; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_set_wm8785_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_set_wm8785_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.generic_data* }
%struct.generic_data = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }

@WM8785_MCR_SLAVE = common dso_local global i32 0, align 4
@WM8785_FORMAT_LJUST = common dso_local global i32 0, align 4
@WM8785_OSR_SINGLE = common dso_local global i32 0, align 4
@WM8785_OSR_DOUBLE = common dso_local global i32 0, align 4
@WM8785_OSR_QUAD = common dso_local global i32 0, align 4
@WM8785_R7 = common dso_local global i32 0, align 4
@WM8785_R0 = common dso_local global i32 0, align 4
@WM8785_R2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_pcm_hw_params*)* @set_wm8785_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_wm8785_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.generic_data*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.generic_data*, %struct.generic_data** %8, align 8
  store %struct.generic_data* %9, %struct.generic_data** %5, align 8
  %10 = load i32, i32* @WM8785_MCR_SLAVE, align 4
  %11 = load i32, i32* @WM8785_FORMAT_LJUST, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = call i32 @params_rate(%struct.snd_pcm_hw_params* %13)
  %15 = icmp sle i32 %14, 48000
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8785_OSR_SINGLE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = icmp sle i32 %22, 96000
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @WM8785_OSR_DOUBLE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @WM8785_OSR_QUAD, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  %36 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %43 = load i32, i32* @WM8785_R7, align 4
  %44 = call i32 @wm8785_write(%struct.oxygen* %42, i32 %43, i32 0)
  %45 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %46 = load i32, i32* @WM8785_R0, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @wm8785_write(%struct.oxygen* %45, i32 %46, i32 %47)
  %49 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %50 = load i32, i32* @WM8785_R2, align 4
  %51 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  %52 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wm8785_write(%struct.oxygen* %49, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8785_write(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
