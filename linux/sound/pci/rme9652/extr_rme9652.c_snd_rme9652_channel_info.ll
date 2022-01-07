; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_channel_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_channel_info = type { i64, i32, i32, i64 }
%struct.snd_rme9652 = type { i32* }

@RME9652_NCHANNELS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RME9652_CHANNEL_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_channel_info*)* @snd_rme9652_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_channel_info(%struct.snd_pcm_substream* %0, %struct.snd_pcm_channel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_channel_info*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_channel_info* %1, %struct.snd_pcm_channel_info** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_rme9652* %9, %struct.snd_rme9652** %6, align 8
  %10 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RME9652_NCHANNELS, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %23 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RME9652_NCHANNELS, align 8
  %29 = call i64 @array_index_nospec(i64 %27, i64 %28)
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RME9652_CHANNEL_BUFFER_BYTES, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %45, i32 0, i32 2
  store i32 32, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %34, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
