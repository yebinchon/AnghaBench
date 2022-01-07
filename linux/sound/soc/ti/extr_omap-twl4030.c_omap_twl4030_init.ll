; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-twl4030.c_omap_twl4030_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-twl4030.c_omap_twl4030_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }
%struct.omap_tw4030_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_twl4030 = type { i64, i32 }

@hs_jack_gpios = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@hs_jack_pins = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Earpiece Spk\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Handsfree Spk\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Headset Stereophone\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Carkit Spk\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Main Mic\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Sub Mic\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Carkit Mic\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Digital0 Mic\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Digital1 Mic\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @omap_twl4030_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_twl4030_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.omap_tw4030_pdata*, align 8
  %7 = alloca %struct.omap_twl4030*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  store %struct.snd_soc_card* %11, %struct.snd_soc_card** %4, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %12, i32 0, i32 1
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %5, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.omap_tw4030_pdata* @dev_get_platdata(i32 %16)
  store %struct.omap_tw4030_pdata* %17, %struct.omap_tw4030_pdata** %6, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %19 = call %struct.omap_twl4030* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %18)
  store %struct.omap_twl4030* %19, %struct.omap_twl4030** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %21 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %1
  %25 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %26 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hs_jack_gpios, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %31, i32 0, i32 0
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %32, align 8
  %34 = load i32, i32* @SND_JACK_HEADSET, align 4
  %35 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %36 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hs_jack_pins, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hs_jack_pins, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %38)
  %40 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %36, %struct.TYPE_6__* %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %129

45:                                               ; preds = %24
  %46 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %47 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hs_jack_gpios, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hs_jack_gpios, align 8
  %51 = call i32 @snd_soc_jack_add_gpios(i32* %47, i32 %49, %struct.TYPE_6__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %129

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %59 = icmp ne %struct.omap_tw4030_pdata* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %62 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %129

67:                                               ; preds = %60
  %68 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %69 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %70 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %68, i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %74 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %75 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %73, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %79 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %80 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %78, i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %84 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %85 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %83, i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %89 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %90 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %88, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %94 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %95 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %93, i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %98 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %99 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %100 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %98, i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %103 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %104 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %105 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %103, i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %108 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %109 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %110 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %108, i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %113 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %114 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %115 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %113, i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %118 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %119 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %120 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %118, i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %123 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %124 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %6, align 8
  %125 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context* %123, i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %67, %65, %54, %43
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.omap_tw4030_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.omap_twl4030* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @twl4030_disconnect_pin(%struct.snd_soc_dapm_context*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
