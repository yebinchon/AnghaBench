; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_stop_virtblk.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_stop_virtblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mic_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MIC_VRING_ENTRIES = common dso_local global i32 0, align 4
@MIC_VIRTIO_RING_ALIGN = common dso_local global i32 0, align 4
@MIC_DEVICE_PAGE_END = common dso_local global i64 0, align 8
@virtblk_dev_page = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s munmap errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_info*)* @stop_virtblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_virtblk(%struct.mic_info* %0) #0 {
  %2 = alloca %struct.mic_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mic_info* %0, %struct.mic_info** %2, align 8
  %5 = load i32, i32* @MIC_VRING_ENTRIES, align 4
  %6 = load i32, i32* @MIC_VIRTIO_RING_ALIGN, align 4
  %7 = call i64 @_vring_size(i32 %5, i32 %6)
  %8 = add i64 %7, 4
  %9 = call i32 @PAGE_ALIGN(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %11 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @MIC_DEVICE_PAGE_END, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @virtblk_dev_page, i32 0, i32 0, i32 0), align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i32 @munmap(i32 %13, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %25 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @mpsslog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %31 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @close(i32 %33)
  ret void
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @_vring_size(i32, i32) #1

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @mpsslog(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
