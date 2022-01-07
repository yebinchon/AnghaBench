; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_prepare_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_prepare_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.aw2_pcm_device = type { i32, %struct.aw2* }
%struct.aw2 = type { i32, i32 }

@snd_pcm_period_elapsed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_aw2_pcm_prepare_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aw2_pcm_prepare_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.aw2_pcm_device*, align 8
  %4 = alloca %struct.aw2*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.aw2_pcm_device* %9, %struct.aw2_pcm_device** %3, align 8
  %10 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %3, align 8
  %11 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %10, i32 0, i32 1
  %12 = load %struct.aw2*, %struct.aw2** %11, align 8
  store %struct.aw2* %12, %struct.aw2** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.aw2*, %struct.aw2** %4, align 8
  %17 = getelementptr inbounds %struct.aw2, %struct.aw2* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.aw2*, %struct.aw2** %4, align 8
  %24 = getelementptr inbounds %struct.aw2, %struct.aw2* %23, i32 0, i32 1
  %25 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %3, align 8
  %26 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @snd_aw2_saa7146_pcm_init_capture(i32* %24, i32 %27, i32 %30, i64 %31, i64 %32)
  %34 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %3, align 8
  %35 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* @snd_pcm_period_elapsed, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %40 = bitcast %struct.snd_pcm_substream* %39 to i8*
  %41 = call i32 @snd_aw2_saa7146_define_it_capture_callback(i32 %36, i32 %38, i8* %40)
  %42 = load %struct.aw2*, %struct.aw2** %4, align 8
  %43 = getelementptr inbounds %struct.aw2, %struct.aw2* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_aw2_saa7146_pcm_init_capture(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @snd_aw2_saa7146_define_it_capture_callback(i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
