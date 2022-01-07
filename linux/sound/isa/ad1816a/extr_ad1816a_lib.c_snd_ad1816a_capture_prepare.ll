; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_ad1816a = type { i32, i32, i32, i32 }

@AD1816A_CAPTURE_CONFIG = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_ENABLE = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_PIO = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_SAMPLE_RATE = common dso_local global i32 0, align 4
@AD1816A_FMT_ALL = common dso_local global i32 0, align 4
@AD1816A_FMT_STEREO = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_BASE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ad1816a_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ad1816a*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_ad1816a* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ad1816a* %9, %struct.snd_ad1816a** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %13, i32 0, i32 2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %22 = load i32, i32* @AD1816A_CAPTURE_CONFIG, align 4
  %23 = load i32, i32* @AD1816A_CAPTURE_ENABLE, align 4
  %24 = load i32, i32* @AD1816A_CAPTURE_PIO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %21, i32 %22, i32 %25, i32 0)
  %27 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMA_MODE_READ, align 4
  %35 = load i32, i32* @DMA_AUTOINIT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @snd_dma_program(i32 %29, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %42 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load i32, i32* %7, align 4
  %47 = mul i32 %46, 33000
  %48 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = udiv i32 %47, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %1
  %53 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %54 = load i32, i32* @AD1816A_CAPTURE_SAMPLE_RATE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @snd_ad1816a_write(%struct.snd_ad1816a* %53, i32 %54, i32 %55)
  %57 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %58 = load i32, i32* @AD1816A_CAPTURE_CONFIG, align 4
  %59 = load i32, i32* @AD1816A_FMT_ALL, align 4
  %60 = load i32, i32* @AD1816A_FMT_STEREO, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_ad1816a_get_format(%struct.snd_ad1816a* %62, i32 %65, i32 %68)
  %70 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %57, i32 %58, i32 %61, i32 %69)
  %71 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %72 = load i32, i32* @AD1816A_CAPTURE_BASE_COUNT, align 4
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %74 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %73)
  %75 = sdiv i32 %74, 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @snd_ad1816a_write(%struct.snd_ad1816a* %71, i32 %72, i32 %76)
  %78 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %79 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %78, i32 0, i32 2
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret i32 0
}

declare dso_local %struct.snd_ad1816a* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a*, i32, i32, i32) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

declare dso_local i32 @snd_ad1816a_write(%struct.snd_ad1816a*, i32, i32) #1

declare dso_local i32 @snd_ad1816a_get_format(%struct.snd_ad1816a*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
