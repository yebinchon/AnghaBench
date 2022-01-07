; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.pcm_runtime = type { i64, i32, i64 }
%struct.pcm_substream = type { i64, i64 }

@EPIPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@STREAM_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hiface_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiface_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.pcm_runtime* %9, %struct.pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream* %10)
  store %struct.pcm_substream* %11, %struct.pcm_substream** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EPIPE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %24 = icmp ne %struct.pcm_substream* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %22
  %29 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %33 = call i32 @hiface_pcm_stream_stop(%struct.pcm_runtime* %32)
  %34 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %35 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %37 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STREAM_DISABLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %28
  %44 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hiface_pcm_set_rate(%struct.pcm_runtime* %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %53 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %43
  %57 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %58 = call i32 @hiface_pcm_stream_start(%struct.pcm_runtime* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %69 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %61, %51, %25, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hiface_pcm_stream_stop(%struct.pcm_runtime*) #1

declare dso_local i32 @hiface_pcm_set_rate(%struct.pcm_runtime*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hiface_pcm_stream_start(%struct.pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
