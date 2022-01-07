; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, i32 }
%struct.snd_ca0106 = type { i32 }

@CAPTURE_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_pointer_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_ca0106_pcm_pointer_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ca0106_pcm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ca0106* %12, %struct.snd_ca0106** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %17, align 8
  store %struct.snd_ca0106_pcm* %18, %struct.snd_ca0106_pcm** %6, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %29 = load i32, i32* @CAPTURE_POINTER, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @snd_ca0106_ptr_read(%struct.snd_ca0106* %28, i32 %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %32, i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %41, %27
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %26
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
