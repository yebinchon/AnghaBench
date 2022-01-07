; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_fix_tdm_chan.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_fix_tdm_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.uniperif* }
%struct.uniperif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_interval = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_fix_tdm_chan(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.uniperif*, align 8
  %6 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %7 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %7, i32 0, i32 1
  %9 = load %struct.uniperif*, %struct.uniperif** %8, align 8
  store %struct.uniperif* %9, %struct.uniperif** %5, align 8
  %10 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %11 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %16 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %6, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %6, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %6, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %24 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %23, i32 %26)
  %28 = call i32 @snd_interval_refine(i32 %27, %struct.snd_interval* %6)
  ret i32 %28
}

declare dso_local i32 @snd_interval_refine(i32, %struct.snd_interval*) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
