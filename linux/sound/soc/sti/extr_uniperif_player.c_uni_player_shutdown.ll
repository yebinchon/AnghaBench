; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i64, i32, i32* }

@UNIPERIF_STATE_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uni_player_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_player_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.sti_uniperiph_data*, align 8
  %6 = alloca %struct.uniperif*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.sti_uniperiph_data* %9, %struct.sti_uniperiph_data** %5, align 8
  %10 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %11 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.uniperif*, %struct.uniperif** %12, align 8
  store %struct.uniperif* %13, %struct.uniperif** %6, align 8
  %14 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %15 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %19 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNIPERIF_STATE_STOPPED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %25 = call i32 @uni_player_stop(%struct.uniperif* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %28 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %30 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uni_player_stop(%struct.uniperif*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
