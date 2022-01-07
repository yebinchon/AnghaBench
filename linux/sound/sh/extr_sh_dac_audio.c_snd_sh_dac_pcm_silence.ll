; ModuleID = '/home/carl/AnghaBench/linux/sound/sh/extr_sh_dac_audio.c_snd_sh_dac_pcm_silence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sh/extr_sh_dac_audio.c_snd_sh_dac_pcm_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_sh_dac = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i64)* @snd_sh_dac_pcm_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sh_dac_pcm_silence(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_sh_dac*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = call %struct.snd_sh_dac* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_sh_dac* %12, %struct.snd_sh_dac** %9, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %10, align 8
  %16 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %17 = getelementptr inbounds %struct.snd_sh_dac, %struct.snd_sh_dac* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @memset_io(i64 %20, i32 0, i64 %21)
  %23 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %24 = getelementptr inbounds %struct.snd_sh_dac, %struct.snd_sh_dac* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %31 = getelementptr inbounds %struct.snd_sh_dac, %struct.snd_sh_dac* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %33 = getelementptr inbounds %struct.snd_sh_dac, %struct.snd_sh_dac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %38 = getelementptr inbounds %struct.snd_sh_dac, %struct.snd_sh_dac* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.snd_sh_dac*, %struct.snd_sh_dac** %9, align 8
  %40 = call i32 @dac_audio_start_timer(%struct.snd_sh_dac* %39)
  br label %41

41:                                               ; preds = %36, %4
  ret i32 0
}

declare dso_local %struct.snd_sh_dac* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @memset_io(i64, i32, i64) #1

declare dso_local i32 @dac_audio_start_timer(%struct.snd_sh_dac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
