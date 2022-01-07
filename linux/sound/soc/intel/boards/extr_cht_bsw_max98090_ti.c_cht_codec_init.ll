; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cht_mc_private = type { i32, i32, i64, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@cht_jack_nb = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@hs_jack_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Headset Jack creation failed %d\0A\00", align 1
@hs_jack_gpios = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"jack detection gpios not added, error %d\0A\00", align 1
@QUIRK_PMC_PLT_CLK_0 = common dso_local global i32 0, align 4
@CHT_PLAT_CLK_3_HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cht_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cht_mc_private*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.TYPE_5__* %10)
  store %struct.cht_mc_private* %11, %struct.cht_mc_private** %6, align 8
  %12 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %13 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %12, i32 0, i32 3
  store %struct.snd_soc_jack* %13, %struct.snd_soc_jack** %7, align 8
  %14 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %15 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %20 = call i32 @snd_soc_jack_notifier_register(%struct.snd_soc_jack* %19, i32* @cht_jack_nb)
  store i32 0, i32* %2, align 4
  br label %99

21:                                               ; preds = %1
  %22 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %23 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %30 = load i32, i32* @hs_jack_pins, align 4
  %31 = load i32, i32* @hs_jack_pins, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @snd_soc_card_jack_new(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.snd_soc_jack* %29, i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %99

43:                                               ; preds = %21
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %52 = load i32, i32* @hs_jack_gpios, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = load i32, i32* @hs_jack_gpios, align 4
  %55 = call i32 @snd_soc_jack_add_gpiods(i32 %50, %struct.snd_soc_jack* %51, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %43
  %65 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %66 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @QUIRK_PMC_PLT_CLK_0, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %99

72:                                               ; preds = %64
  %73 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %74 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_prepare_enable(i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %81 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.cht_mc_private*, %struct.cht_mc_private** %6, align 8
  %86 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CHT_PLAT_CLK_3_HZ, align 4
  %89 = call i32 @clk_set_rate(i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %94 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %84
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %71, %36, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_soc_jack_notifier_register(%struct.snd_soc_jack*, i32*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_5__*, i8*, i32, %struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_jack_add_gpiods(i32, %struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
