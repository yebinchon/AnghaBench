; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs4236_pcm(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @snd_wss_pcm(%struct.snd_wss* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %18 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %16
  store i32 %22, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @snd_wss_pcm(%struct.snd_wss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
