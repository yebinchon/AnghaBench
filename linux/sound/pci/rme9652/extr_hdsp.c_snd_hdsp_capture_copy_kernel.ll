; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_capture_copy_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_capture_copy_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdsp = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @snd_hdsp_capture_copy_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_capture_copy_kernel(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hdsp*, align 8
  %13 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = call %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.hdsp* %15, %struct.hdsp** %12, align 8
  %16 = load %struct.hdsp*, %struct.hdsp** %12, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @hdsp_channel_buffer_location(%struct.hdsp* %16, i32 %21, i32 %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %5
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @memcpy(i8* %34, i8* %37, i64 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i8* @hdsp_channel_buffer_location(%struct.hdsp*, i32, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
