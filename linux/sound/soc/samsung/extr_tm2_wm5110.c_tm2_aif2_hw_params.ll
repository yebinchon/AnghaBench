; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_aif2_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_aif2_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not supported sample rate: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM5110_FLL2_REFCLK = common dso_local global i32 0, align 4
@ARIZONA_FLL_SRC_MCLK1 = common dso_local global i32 0, align 4
@MCLK_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set FLL2 source: %d\0A\00", align 1
@WM5110_FLL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to start FLL2: %d\0A\00", align 1
@ARIZONA_CLK_ASYNCCLK = common dso_local global i32 0, align 4
@ARIZONA_CLK_SRC_FLL2 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to set ASYNCCLK source: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @tm2_aif2_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_aif2_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %7, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i32 @params_rate(%struct.snd_pcm_hw_params* %18)
  switch i32 %19, label %22 [
    i32 8000, label %20
    i32 12000, label %20
    i32 16000, label %20
    i32 11025, label %21
  ]

20:                                               ; preds = %2, %2, %2
  store i32 49152000, i32* %8, align 4
  br label %31

21:                                               ; preds = %2
  store i32 45158400, i32* %8, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %21, %20
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %33 = load i32, i32* @WM5110_FLL2_REFCLK, align 4
  %34 = load i32, i32* @ARIZONA_FLL_SRC_MCLK1, align 4
  %35 = load i32, i32* @MCLK_RATE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %31
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = load i32, i32* @WM5110_FLL2, align 4
  %50 = load i32, i32* @ARIZONA_FLL_SRC_MCLK1, align 4
  %51 = load i32, i32* @MCLK_RATE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %80

63:                                               ; preds = %47
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %65 = load i32, i32* @ARIZONA_CLK_ASYNCCLK, align 4
  %66 = load i32, i32* @ARIZONA_CLK_SRC_FLL2, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %69 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %72, %56, %40, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
