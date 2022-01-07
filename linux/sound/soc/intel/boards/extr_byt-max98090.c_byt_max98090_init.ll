; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_byt-max98090.c_byt_max98090_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_byt-max98090.c_byt_max98090_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, i32 }
%struct.snd_soc_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.byt_max98090_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@M98090_REG_SYSTEM_CLOCK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't set codec clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@hs_jack_pins = common dso_local global i32 0, align 4
@hs_jack_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_max98090_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_max98090_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.byt_max98090_private*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %5, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %12 = call %struct.byt_max98090_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.byt_max98090_private* %12, %struct.byt_max98090_private** %6, align 8
  %13 = load %struct.byt_max98090_private*, %struct.byt_max98090_private** %6, align 8
  %14 = getelementptr inbounds %struct.byt_max98090_private, %struct.byt_max98090_private* %13, i32 0, i32 0
  store %struct.snd_soc_jack* %14, %struct.snd_soc_jack** %7, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @M98090_REG_SYSTEM_CLOCK, align 4
  %22 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %23 = call i32 @snd_soc_dai_set_sysclk(i32 %20, i32 %21, i32 25000000, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %34, i32 0, i32 0
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %35, align 8
  %37 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %38 = load i32, i32* @SND_JACK_HEADSET, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %41 = load i32, i32* @hs_jack_pins, align 4
  %42 = load i32, i32* @hs_jack_pins, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39, %struct.snd_soc_jack* %40, i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %33
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %56 = load i32, i32* @hs_jack_gpios, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load i32, i32* @hs_jack_gpios, align 4
  %59 = call i32 @snd_soc_jack_add_gpiods(i32 %54, %struct.snd_soc_jack* %55, i32 %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %49, %47, %26
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.byt_max98090_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpiods(i32, %struct.snd_soc_jack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
