; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.vm_area_struct = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @snd_pcm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.snd_pcm_file*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  store %struct.snd_pcm_file* %11, %struct.snd_pcm_file** %6, align 8
  %12 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  switch i64 %27, label %52 [
    i64 128, label %28
    i64 129, label %40
  ]

28:                                               ; preds = %21
  %29 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %6, align 8
  %30 = call i32 @pcm_status_mmap_allowed(%struct.snd_pcm_file* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = call i32 @snd_pcm_mmap_status(%struct.snd_pcm_substream* %36, %struct.file* %37, %struct.vm_area_struct* %38)
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %21
  %41 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %6, align 8
  %42 = call i32 @pcm_control_mmap_allowed(%struct.snd_pcm_file* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = call i32 @snd_pcm_mmap_control(%struct.snd_pcm_substream* %48, %struct.file* %49, %struct.vm_area_struct* %50)
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %21
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = call i32 @snd_pcm_mmap_data(%struct.snd_pcm_substream* %53, %struct.file* %54, %struct.vm_area_struct* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %47, %44, %35, %32, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pcm_status_mmap_allowed(%struct.snd_pcm_file*) #1

declare dso_local i32 @snd_pcm_mmap_status(%struct.snd_pcm_substream*, %struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @pcm_control_mmap_allowed(%struct.snd_pcm_file*) #1

declare dso_local i32 @snd_pcm_mmap_control(%struct.snd_pcm_substream*, %struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @snd_pcm_mmap_data(%struct.snd_pcm_substream*, %struct.file*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
