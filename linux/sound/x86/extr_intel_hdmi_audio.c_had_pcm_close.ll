; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_intelhad = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @had_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_intelhad*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_intelhad* %5, %struct.snd_intelhad** %3, align 8
  %6 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %7 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %10 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %13 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %23, %1
  %18 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %19 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %25 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = call i32 (...) @cpu_relax()
  %28 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %29 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %33 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %36 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_mark_last_busy(i32 %37)
  %39 = load %struct.snd_intelhad*, %struct.snd_intelhad** %3, align 8
  %40 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pm_runtime_put_autosuspend(i32 %41)
  ret i32 0
}

declare dso_local %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
