; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_channel_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i64 }
%struct.hdsp = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@HDSP_CHANNEL_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_channel_info*)* @snd_hdsp_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_channel_info(%struct.snd_pcm_substream* %0, %struct.snd_pcm_channel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_channel_info*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_channel_info* %1, %struct.snd_pcm_channel_info** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.hdsp* %9, %struct.hdsp** %6, align 8
  %10 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %15 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @array_index_nospec(i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %31 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %24
  %42 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %43 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HDSP_CHANNEL_BUFFER_BYTES, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %55, i32 0, i32 2
  store i32 32, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %38, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
