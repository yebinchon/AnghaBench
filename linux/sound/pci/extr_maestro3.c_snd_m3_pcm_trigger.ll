; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.m3_dma* }
%struct.m3_dma = type { i32 }
%struct.snd_m3 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_m3_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_m3*, align 8
  %7 = alloca %struct.m3_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_m3* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_m3* %10, %struct.snd_m3** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.m3_dma*, %struct.m3_dma** %14, align 8
  store %struct.m3_dma* %15, %struct.m3_dma** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %19 = icmp ne %struct.m3_dma* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %29 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %62 [
    i32 130, label %32
    i32 131, label %32
    i32 129, label %48
    i32 128, label %48
  ]

32:                                               ; preds = %27, %27
  %33 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %34 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %32
  %41 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %42 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %44 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %46 = call i32 @snd_m3_pcm_start(%struct.snd_m3* %43, %struct.m3_dma* %44, %struct.snd_pcm_substream* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %37
  br label %62

48:                                               ; preds = %27, %27
  %49 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %50 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %61

54:                                               ; preds = %48
  %55 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %56 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %58 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %60 = call i32 @snd_m3_pcm_stop(%struct.snd_m3* %57, %struct.m3_dma* %58, %struct.snd_pcm_substream* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %54, %53
  br label %62

62:                                               ; preds = %27, %61, %47
  %63 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %64 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.snd_m3* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_m3_pcm_start(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_m3_pcm_stop(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
