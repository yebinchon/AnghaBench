; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_hal2 = type { %struct.hal2_codec }
%struct.hal2_codec = type { %struct.snd_pcm_substream*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@H2_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hal2_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_hal2*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.hal2_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_hal2* %7, %struct.snd_hal2** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %12 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %11, i32 0, i32 0
  store %struct.hal2_codec* %12, %struct.hal2_codec** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %17 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hal2_compute_rate(%struct.hal2_codec* %18, i32 %21)
  %23 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %24 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %26 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %25, i32 0, i32 1
  %27 = call i32 @memset(%struct.TYPE_2__* %26, i32 0, i32 16)
  %28 = load i32, i32* @H2_BUF_SIZE, align 4
  %29 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %30 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @H2_BUF_SIZE, align 4
  %33 = sdiv i32 %32, 2
  %34 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %35 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %38 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %41 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %44 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %43)
  %45 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %46 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %49 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %50 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %49, i32 0, i32 0
  store %struct.snd_pcm_substream* %48, %struct.snd_pcm_substream** %50, align 8
  %51 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %52 = call i32 @hal2_setup_adc(%struct.snd_hal2* %51)
  ret i32 0
}

declare dso_local %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @hal2_compute_rate(%struct.hal2_codec*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @hal2_setup_adc(%struct.snd_hal2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
