; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_card_asihpi_pcm* }
%struct.snd_card_asihpi_pcm = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s, pointer=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_card_asihpi_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_card_asihpi_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card_asihpi_pcm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %11, align 8
  store %struct.snd_card_asihpi_pcm* %12, %struct.snd_card_asihpi_pcm** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %15 = call i32 @snd_pcm_debug_name(%struct.snd_pcm_substream* %13, i8* %14, i32 16)
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %17 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %4, align 8
  %18 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %16, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @snd_printddd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %26)
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i32 @snd_pcm_debug_name(%struct.snd_pcm_substream*, i8*, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_printddd(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
