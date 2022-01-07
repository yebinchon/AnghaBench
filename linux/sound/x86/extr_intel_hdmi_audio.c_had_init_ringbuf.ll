; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_init_ringbuf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_init_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_intelhad = type { i32, i32, i64, i64, i64 }

@HAD_NUM_OF_RING_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_intelhad*)* @had_init_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @had_init_ringbuf(%struct.snd_pcm_substream* %0, %struct.snd_intelhad* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_intelhad* %1, %struct.snd_intelhad** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HAD_NUM_OF_RING_BUFS, align 4
  %16 = call i32 @min(i32 %14, i32 %15)
  %17 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %18 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %20 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @max(i32 %21, i32 2)
  %23 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %24 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %25, i32 %28)
  %30 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %31 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %33 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 63
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %38 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %40 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %42 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %62, %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @HAD_NUM_OF_RING_BUFS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %50 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %56 = call i32 @had_prog_bd(%struct.snd_pcm_substream* %54, %struct.snd_intelhad* %55)
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @had_invalidate_bd(%struct.snd_intelhad* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %67 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @had_prog_bd(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @had_invalidate_bd(%struct.snd_intelhad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
