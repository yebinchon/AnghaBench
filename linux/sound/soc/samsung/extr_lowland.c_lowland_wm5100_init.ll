; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_lowland.c_lowland_wm5100_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_lowland.c_lowland_wm5100_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM5100_CLK_SYSCLK = common dso_local global i32 0, align 4
@WM5100_CLKSRC_MCLK1 = common dso_local global i32 0, align 4
@MCLK1_RATE = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to set SYSCLK clock source: %d\0A\00", align 1
@WM5100_CLK_OPCLK = common dso_local global i32 0, align 4
@CLKOUT_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set OPCLK rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@lowland_headset = common dso_local global i32 0, align 4
@lowland_headset_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @lowland_wm5100_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowland_wm5100_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %6 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = load i32, i32* @WM5100_CLK_SYSCLK, align 4
  %13 = load i32, i32* @WM5100_CLKSRC_MCLK1, align 4
  %14 = load i32, i32* @MCLK1_RATE, align 4
  %15 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %16 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %25 = load i32, i32* @WM5100_CLK_OPCLK, align 4
  %26 = load i32, i32* @CLKOUT_RATE, align 4
  %27 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %24, i32 %25, i32 0, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %23
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %39 = load i32, i32* @SND_JACK_HEADSET, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SND_JACK_BTN_0, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @lowland_headset_pins, align 4
  %44 = load i32, i32* @lowland_headset_pins, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @snd_soc_card_jack_new(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32* @lowland_headset, i32 %43, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %34
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = call i32 @wm5100_detect(%struct.snd_soc_component* %52, i32* @lowland_headset)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %49, %30, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm5100_detect(%struct.snd_soc_component*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
