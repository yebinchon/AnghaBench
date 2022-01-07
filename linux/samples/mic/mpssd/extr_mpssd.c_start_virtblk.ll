; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_start_virtblk.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_start_virtblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mic_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mic_vring = type { i32 }

@virtblk_dev_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: blk_config is not 8 byte aligned.\0A\00", align 1
@MAP_FAILED = common dso_local global i64 0, align 8
@VIRTIO_ID_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s init_vr failed %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_info*, %struct.mic_vring*)* @start_virtblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_virtblk(%struct.mic_info* %0, %struct.mic_vring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mic_info*, align 8
  %5 = alloca %struct.mic_vring*, align 8
  store %struct.mic_info* %0, %struct.mic_info** %4, align 8
  store %struct.mic_vring* %1, %struct.mic_vring** %5, align 8
  br i1 icmp ne (i64 urem (i64 ptrtoint (i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @virtblk_dev_page, i32 0, i32 1) to i64), i64 8), i64 0), label %6, label %11

6:                                                ; preds = %2
  %7 = load %struct.mic_info*, %struct.mic_info** %4, align 8
  %8 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i32, ...) @mpsslog(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.mic_info*, %struct.mic_info** %4, align 8
  %13 = call i32 @add_virtio_device(%struct.mic_info* %12, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @virtblk_dev_page, i32 0, i32 0))
  %14 = load i64, i64* @MAP_FAILED, align 8
  %15 = load %struct.mic_info*, %struct.mic_info** %4, align 8
  %16 = load %struct.mic_info*, %struct.mic_info** %4, align 8
  %17 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VIRTIO_ID_BLOCK, align 4
  %21 = load %struct.mic_vring*, %struct.mic_vring** %5, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @virtblk_dev_page, i32 0, i32 0, i32 0), align 4
  %23 = call i64 @init_vr(%struct.mic_info* %15, i32 %19, i32 %20, %struct.mic_vring* %21, i32* null, i32 %22)
  %24 = icmp eq i64 %14, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load %struct.mic_info*, %struct.mic_info** %4, align 8
  %27 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, i32, ...) @mpsslog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30)
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25, %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mpsslog(i8*, i32, ...) #1

declare dso_local i32 @add_virtio_device(%struct.mic_info*, %struct.TYPE_6__*) #1

declare dso_local i64 @init_vr(%struct.mic_info*, i32, i32, %struct.mic_vring*, i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
