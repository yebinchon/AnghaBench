; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.emu10k1x_voice = type { %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu10k1x*, %struct.emu10k1x_voice*)* @snd_emu10k1x_pcm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1x_pcm_interrupt(%struct.emu10k1x* %0, %struct.emu10k1x_voice* %1) #0 {
  %3 = alloca %struct.emu10k1x*, align 8
  %4 = alloca %struct.emu10k1x_voice*, align 8
  %5 = alloca %struct.emu10k1x_pcm*, align 8
  store %struct.emu10k1x* %0, %struct.emu10k1x** %3, align 8
  store %struct.emu10k1x_voice* %1, %struct.emu10k1x_voice** %4, align 8
  %6 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %4, align 8
  %7 = getelementptr inbounds %struct.emu10k1x_voice, %struct.emu10k1x_voice* %6, i32 0, i32 0
  %8 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  store %struct.emu10k1x_pcm* %8, %struct.emu10k1x_pcm** %5, align 8
  %9 = icmp eq %struct.emu10k1x_pcm* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %13 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_9__* %20)
  br label %22

22:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
