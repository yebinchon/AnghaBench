; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_cx2072x.c_byt_cht_cx2072x_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_cx2072x.c_byt_cht_cx2072x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__*, i32, %struct.snd_soc_card* }
%struct.TYPE_5__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@byt_cht_cx2072x_acpi_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to add GPIO mapping table\0A\00", align 1
@CX2072X_MCLK_EXTERNAL_PLL = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not set sysclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@byt_cht_cx2072x_headset = common dso_local global i32 0, align 4
@byt_cht_cx2072x_headset_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_cht_cx2072x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_cht_cx2072x_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 2
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @byt_cht_cx2072x_acpi_gpios, align 4
  %19 = call i64 @devm_acpi_dev_add_driver_gpios(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* @CX2072X_MCLK_EXTERNAL_PLL, align 4
  %34 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %35 = call i32 @snd_soc_dai_set_sysclk(%struct.TYPE_5__* %32, i32 %33, i32 19200000, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %65

44:                                               ; preds = %26
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = load i32, i32* @SND_JACK_HEADSET, align 4
  %47 = load i32, i32* @SND_JACK_BTN_0, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @byt_cht_cx2072x_headset_pins, align 4
  %50 = load i32, i32* @byt_cht_cx2072x_headset_pins, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32* @byt_cht_cx2072x_headset, i32 %49, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %59 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %58, i32* @byt_cht_cx2072x_headset, i32* null)
  %60 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @snd_soc_dai_set_bclk_ratio(%struct.TYPE_5__* %62, i32 50)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %55, %38
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @devm_acpi_dev_add_driver_gpios(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, i32*, i32*) #1

declare dso_local i32 @snd_soc_dai_set_bclk_ratio(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
