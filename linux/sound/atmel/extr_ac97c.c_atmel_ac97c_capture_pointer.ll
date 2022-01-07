; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64 }
%struct.atmel_ac97c = type { i64 }

@ATMEL_PDC_RPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @atmel_ac97c_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atmel_ac97c_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atmel_ac97c*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.atmel_ac97c* %8, %struct.atmel_ac97c** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ATMEL_PDC_RPR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @readl(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %23, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
