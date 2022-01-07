; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_cx20442_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_cx20442_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_card* }
%struct.snd_soc_dai = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }

@cx20442_codec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hook_switch\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@ams_delta_hook_switch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to allocate resources for hook switch, will continue without one.\0A\00", align 1
@ams_delta_hook_switch_gpios = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"Failed to set up hook switch GPIO line, will continue with hook switch inactive.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"modem_codec\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@gpiod_modem_codec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to obtain modem_codec GPIO\0A\00", align 1
@ams_delta_dai_ops = common dso_local global i32 0, align 4
@ams_delta_startup = common dso_local global i32 0, align 4
@ams_delta_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ams_delta_shutdown = common dso_local global i32 0, align 4
@N_V253 = common dso_local global i32 0, align 4
@cx81801_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"Failed to register line discipline, will continue without any controls.\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"AGCIN\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"AGCOUT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @ams_delta_cx20442_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_cx20442_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_soc_dai* %10, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %12, align 8
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %5, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 1
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* @cx20442_codec, align 4
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %22 = load i32, i32* @SND_JACK_HEADSET, align 4
  %23 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32* @ams_delta_hook_switch, i32* null, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ams_delta_hook_switch_gpios, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load i32, i32* @ams_delta_hook_switch_gpios, align 4
  %38 = call i32 @snd_soc_jack_add_gpiods(i32 %34, i32* @ams_delta_hook_switch, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %31
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %52 = call i32 @devm_gpiod_get(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 %52, i32* @gpiod_modem_codec, align 4
  %53 = load i32, i32* @gpiod_modem_codec, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

61:                                               ; preds = %47
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32* @ams_delta_dai_ops, i32** %72, align 8
  br label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @ams_delta_startup, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ams_delta_ops, i32 0, i32 1), align 4
  %75 = load i32, i32* @ams_delta_shutdown, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ams_delta_ops, i32 0, i32 0), align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* @N_V253, align 4
  %78 = call i32 @tty_register_ldisc(i32 %77, i32* @cx81801_ops)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %83 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_warn(i32 %84, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

86:                                               ; preds = %76
  %87 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %88 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %89 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %90 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %91 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %92 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %94 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %81, %56
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_jack_add_gpiods(i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_gpiod_get(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @tty_register_ldisc(i32, i32*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
