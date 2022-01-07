; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_cht_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_cht_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cht_mc_private = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cht_rt5672_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to add GPIO mapping table\0A\00", align 1
@RT5670_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5670_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5670_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5670_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@cht_bsw_headset_pins = common dso_local global i32 0, align 4
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@CHT_PLAT_CLK_3_HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cht_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cht_mc_private*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 2
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_soc_dai* %10, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(i32 %16)
  store %struct.cht_mc_private* %17, %struct.cht_mc_private** %7, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @cht_rt5672_gpios, align 4
  %22 = call i64 @devm_acpi_dev_add_driver_gpios(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %31 = load i32, i32* @RT5670_DA_STEREO_FILTER, align 4
  %32 = load i32, i32* @RT5670_DA_MONO_L_FILTER, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RT5670_DA_MONO_R_FILTER, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RT5670_AD_STEREO_FILTER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RT5670_AD_MONO_L_FILTER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RT5670_AD_MONO_R_FILTER, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT5670_CLK_SEL_I2S1_ASRC, align 4
  %43 = call i32 @rt5670_sel_asrc_clk_src(%struct.snd_soc_component* %30, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SND_JACK_HEADSET, align 4
  %48 = load i32, i32* @SND_JACK_BTN_0, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SND_JACK_BTN_1, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SND_JACK_BTN_2, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %55 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %54, i32 0, i32 1
  %56 = load i32, i32* @cht_bsw_headset_pins, align 4
  %57 = load i32, i32* @cht_bsw_headset_pins, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @snd_soc_card_jack_new(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53, %struct.TYPE_3__* %55, i32 %56, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %29
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %122

64:                                               ; preds = %29
  %65 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %66 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SND_JACK_BTN_0, align 4
  %70 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %71 = call i32 @snd_jack_set_key(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %73 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SND_JACK_BTN_1, align 4
  %77 = load i32, i32* @KEY_VOLUMEUP, align 4
  %78 = call i32 @snd_jack_set_key(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %80 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SND_JACK_BTN_2, align 4
  %84 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %85 = call i32 @snd_jack_set_key(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %87 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %88 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %87, i32 0, i32 1
  %89 = call i32 @rt5670_set_jack_detect(%struct.snd_soc_component* %86, %struct.TYPE_3__* %88)
  %90 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %91 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %64
  %95 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %96 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @clk_prepare_enable(i64 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %103 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @clk_disable_unprepare(i64 %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %108 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @CHT_PLAT_CLK_3_HZ, align 4
  %111 = call i32 @clk_set_rate(i64 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %116 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %64
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %114, %62
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i64 @devm_acpi_dev_add_driver_gpios(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rt5670_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @rt5670_set_jack_detect(%struct.snd_soc_component*, %struct.TYPE_3__*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
