; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_mmap_data_fault.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_mmap_data_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_3__*, %struct.snd_pcm_runtime* }
%struct.TYPE_3__ = type { %struct.page* (%struct.snd_pcm_substream*, i64)* }
%struct.snd_pcm_runtime = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @snd_pcm_mmap_data_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_mmap_data_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = icmp eq %struct.snd_pcm_substream* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %5, align 8
  %22 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @PAGE_ALIGN(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %18
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.page* (%struct.snd_pcm_substream*, i64)*, %struct.page* (%struct.snd_pcm_substream*, i64)** %42, align 8
  %44 = icmp ne %struct.page* (%struct.snd_pcm_substream*, i64)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.page* (%struct.snd_pcm_substream*, i64)*, %struct.page* (%struct.snd_pcm_substream*, i64)** %49, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call %struct.page* %50(%struct.snd_pcm_substream* %51, i64 %52)
  store %struct.page* %53, %struct.page** %7, align 8
  br label %58

54:                                               ; preds = %38
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call %struct.page* @snd_pcm_default_page_ops(%struct.snd_pcm_substream* %55, i64 %56)
  store %struct.page* %57, %struct.page** %7, align 8
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %58
  %64 = load %struct.page*, %struct.page** %7, align 8
  %65 = call i32 @get_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %7, align 8
  %67 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %68 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %67, i32 0, i32 1
  store %struct.page* %66, %struct.page** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %61, %36, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.page* @snd_pcm_default_page_ops(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
