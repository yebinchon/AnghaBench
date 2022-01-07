; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_ice1712 = type { i64 }

@ICE1712_IREG_CAP_CTRL = common dso_local global i32 0, align 4
@CONCAP_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_ice1712_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_ice1712_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %4, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = load i32, i32* @ICE1712_IREG_CAP_CTRL, align 4
  %10 = call i32 @snd_ice1712_read(%struct.snd_ice1712* %8, i32 %9)
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = load i32, i32* @CONCAP_ADDR, align 4
  %17 = call i32 @ICEREG(%struct.snd_ice1712* %15, i32 %16)
  %18 = call i64 @inl(i32 %17)
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @bytes_to_frames(%struct.TYPE_2__* %25, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
