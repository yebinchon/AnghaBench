; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_dummy_systimer_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_dummy_systimer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dummy_systimer_pcm* }
%struct.dummy_systimer_pcm = type { %struct.snd_pcm_substream*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dummy_systimer_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dummy_systimer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_systimer_create(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.dummy_systimer_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dummy_systimer_pcm* @kzalloc(i32 16, i32 %5)
  store %struct.dummy_systimer_pcm* %6, %struct.dummy_systimer_pcm** %4, align 8
  %7 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %4, align 8
  %8 = icmp ne %struct.dummy_systimer_pcm* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.dummy_systimer_pcm* %13, %struct.dummy_systimer_pcm** %17, align 8
  %18 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %18, i32 0, i32 2
  %20 = load i32, i32* @dummy_systimer_callback, align 4
  %21 = call i32 @timer_setup(i32* %19, i32 %20, i32 0)
  %22 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %4, align 8
  %27 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %26, i32 0, i32 0
  store %struct.snd_pcm_substream* %25, %struct.snd_pcm_substream** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.dummy_systimer_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
