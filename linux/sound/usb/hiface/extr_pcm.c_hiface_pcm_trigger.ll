; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.pcm_substream = type { i32, i32 }
%struct.pcm_runtime = type { i64 }

@EPIPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @hiface_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiface_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcm_substream*, align 8
  %7 = alloca %struct.pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream* %8)
  store %struct.pcm_substream* %9, %struct.pcm_substream** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.pcm_runtime* %11, %struct.pcm_runtime** %7, align 8
  %12 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EPIPE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %21 = icmp ne %struct.pcm_substream* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %45 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %36
    i32 131, label %36
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %29 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %32 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %34 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_irq(i32* %34)
  store i32 0, i32* %3, align 4
  br label %48

36:                                               ; preds = %25, %25
  %37 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %38 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %41 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %43 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %36, %27, %22, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
