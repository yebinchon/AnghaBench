; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @aaci_pcm_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aaci_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.aaci_runtime*, %struct.aaci_runtime** %11, align 8
  store %struct.aaci_runtime* %12, %struct.aaci_runtime** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %32 [
    i32 130, label %18
    i32 131, label %21
    i32 129, label %24
    i32 128, label %27
    i32 133, label %30
    i32 132, label %31
  ]

18:                                               ; preds = %2
  %19 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %20 = call i32 @aaci_pcm_capture_start(%struct.aaci_runtime* %19)
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %23 = call i32 @aaci_pcm_capture_start(%struct.aaci_runtime* %22)
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %26 = call i32 @aaci_pcm_capture_stop(%struct.aaci_runtime* %25)
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %29 = call i32 @aaci_pcm_capture_stop(%struct.aaci_runtime* %28)
  br label %35

30:                                               ; preds = %2
  br label %35

31:                                               ; preds = %2
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %31, %30, %27, %24, %21, %18
  %36 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aaci_pcm_capture_start(%struct.aaci_runtime*) #1

declare dso_local i32 @aaci_pcm_capture_stop(%struct.aaci_runtime*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
