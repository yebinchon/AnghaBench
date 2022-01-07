; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_byt_cht_es8316_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_byt_cht_es8316_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_route = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__*, %struct.snd_soc_card* }
%struct.TYPE_6__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.byt_cht_es8316_private = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@quirk = common dso_local global i32 0, align 4
@byt_cht_es8316_intmic_in1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_cht_es8316_intmic_in2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_CHT_ES8316_SSP0 = common dso_local global i32 0, align 4
@byt_cht_es8316_ssp0_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_cht_es8316_ssp2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to enable MCLK\0A\00", align 1
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't set codec clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@byt_cht_es8316_jack_pins = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"jack creation failed %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_cht_es8316_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_cht_es8316_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.byt_cht_es8316_private*, align 8
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %4, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %16, align 8
  store %struct.snd_soc_card* %17, %struct.snd_soc_card** %5, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %19 = call %struct.byt_cht_es8316_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %18)
  store %struct.byt_cht_es8316_private* %19, %struct.byt_cht_es8316_private** %6, align 8
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @quirk, align 4
  %24 = call i32 @BYT_CHT_ES8316_MAP(i32 %23)
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_intmic_in1_map, align 8
  store %struct.snd_soc_dapm_route* %27, %struct.snd_soc_dapm_route** %7, align 8
  %28 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_intmic_in1_map, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %28)
  store i32 %29, i32* %8, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_intmic_in2_map, align 8
  store %struct.snd_soc_dapm_route* %31, %struct.snd_soc_dapm_route** %7, align 8
  %32 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_intmic_in2_map, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %35, i32 0, i32 1
  %37 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_5__* %36, %struct.snd_soc_dapm_route* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %150

44:                                               ; preds = %34
  %45 = load i32, i32* @quirk, align 4
  %46 = load i32, i32* @BYT_CHT_ES8316_SSP0, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_ssp0_map, align 8
  store %struct.snd_soc_dapm_route* %50, %struct.snd_soc_dapm_route** %7, align 8
  %51 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_ssp0_map, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %51)
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_ssp2_map, align 8
  store %struct.snd_soc_dapm_route* %54, %struct.snd_soc_dapm_route** %7, align 8
  %55 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_ssp2_map, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %58, i32 0, i32 1
  %60 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_5__* %59, %struct.snd_soc_dapm_route* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %150

67:                                               ; preds = %57
  %68 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %69 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %76 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_disable_unprepare(i32 %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %81 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_set_rate(i32 %82, i32 19200000)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %88 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %93 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_prepare_enable(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %100 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %91
  %104 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %105 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %108 = call i32 @snd_soc_dai_set_sysclk(%struct.TYPE_6__* %106, i32 0, i32 19200000, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %113 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %2, align 4
  br label %150

118:                                              ; preds = %103
  %119 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %120 = load i32, i32* @SND_JACK_HEADSET, align 4
  %121 = load i32, i32* @SND_JACK_BTN_0, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %124 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %123, i32 0, i32 0
  %125 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_jack_pins, align 8
  %126 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_cht_es8316_jack_pins, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %126)
  %128 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %122, %struct.TYPE_7__* %124, %struct.snd_soc_dapm_route* %125, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %133 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %150

138:                                              ; preds = %118
  %139 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %140 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SND_JACK_BTN_0, align 4
  %144 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %145 = call i32 @snd_jack_set_key(i32 %142, i32 %143, i32 %144)
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %147 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %6, align 8
  %148 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %147, i32 0, i32 0
  %149 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %146, %struct.TYPE_7__* %148, i32* null)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %138, %131, %111, %65, %42
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.byt_cht_es8316_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @BYT_CHT_ES8316_MAP(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.TYPE_5__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_7__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
