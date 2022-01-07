; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SNDRV_SEQ_TIMER_ALSA = common dso_local global i32 0, align 4
@seq_default_timer_class = common dso_local global i32 0, align 4
@seq_default_timer_sclass = common dso_local global i32 0, align 4
@seq_default_timer_card = common dso_local global i32 0, align 4
@seq_default_timer_device = common dso_local global i32 0, align 4
@seq_default_timer_subdevice = common dso_local global i32 0, align 4
@seq_default_timer_resolution = common dso_local global i32 0, align 4
@SKEW_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_timer_defaults(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca %struct.snd_seq_timer*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %2, align 8
  %4 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %5 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %4, i32 0, i32 2
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %9 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %8, i32 0, i32 0
  store i32 96, i32* %9, align 8
  %10 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %11 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %10, i32 0, i32 1
  store i32 500000, i32* %11, align 4
  %12 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %13 = call i32 @snd_seq_timer_set_tick_resolution(%struct.snd_seq_timer* %12)
  %14 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %15 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @SNDRV_SEQ_TIMER_ALSA, align 4
  %17 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %18 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @seq_default_timer_class, align 4
  %20 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %21 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @seq_default_timer_sclass, align 4
  %24 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %25 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @seq_default_timer_card, align 4
  %28 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %29 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @seq_default_timer_device, align 4
  %32 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %33 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @seq_default_timer_subdevice, align 4
  %36 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %37 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @seq_default_timer_resolution, align 4
  %40 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %41 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SKEW_BASE, align 4
  %43 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %44 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %46 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 8
  %47 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %48 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %47, i32 0, i32 2
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_seq_timer_set_tick_resolution(%struct.snd_seq_timer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
