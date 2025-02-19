; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_max98090_headset_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_max98090_headset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.cht_mc_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Headset Jack creation failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cht_max98090_headset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_max98090_headset_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.cht_mc_private*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  store %struct.snd_soc_card* %11, %struct.snd_soc_card** %4, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %13 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %12)
  store %struct.cht_mc_private* %13, %struct.cht_mc_private** %5, align 8
  %14 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %15 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %14, i32 0, i32 0
  store %struct.snd_soc_jack* %15, %struct.snd_soc_jack** %6, align 8
  %16 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %17 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SND_JACK_BTN_0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SND_JACK_BTN_1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SND_JACK_BTN_2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SND_JACK_BTN_3, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %30 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.snd_soc_jack* %29, i32* null, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %43 = call i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component* %41, %struct.snd_soc_jack* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component*, %struct.snd_soc_jack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
