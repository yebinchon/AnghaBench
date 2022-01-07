; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @uni_reader_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_reader_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.sti_uniperiph_data*, align 8
  %9 = alloca %struct.uniperif*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sti_uniperiph_data* %11, %struct.sti_uniperiph_data** %8, align 8
  %12 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %8, align 8
  %13 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.uniperif*, %struct.uniperif** %14, align 8
  store %struct.uniperif* %15, %struct.uniperif** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %3
  %18 = load %struct.uniperif*, %struct.uniperif** %9, align 8
  %19 = call i32 @uni_reader_start(%struct.uniperif* %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.uniperif*, %struct.uniperif** %9, align 8
  %22 = call i32 @uni_reader_stop(%struct.uniperif* %21)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @uni_reader_start(%struct.uniperif*) #1

declare dso_local i32 @uni_reader_stop(%struct.uniperif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
