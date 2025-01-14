; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_palm27x.c_palm27x_ac97_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_palm27x.c_palm27x_ac97_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@hs_jack = common dso_local global i32 0, align 4
@hs_jack_pins = common dso_local global i32 0, align 4
@hs_jack_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @palm27x_ac97_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palm27x_ac97_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %5 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %9 = load i32, i32* @hs_jack_pins, align 4
  %10 = load i32, i32* @hs_jack_pins, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @snd_soc_card_jack_new(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8, i32* @hs_jack, i32 %9, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @hs_jack_gpios, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load i32, i32* @hs_jack_gpios, align 4
  %21 = call i32 @snd_soc_jack_add_gpios(i32* @hs_jack, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
