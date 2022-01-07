; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_txrx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_txrx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_vring = type { i32 }
%struct.mic_copy_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@VIRTIO_ID_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.mic_vring*, %struct.mic_copy_desc*, i8*)* @txrx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txrx_prepare(i32 %0, i32 %1, %struct.mic_vring* %2, %struct.mic_copy_desc* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mic_vring*, align 8
  %9 = alloca %struct.mic_copy_desc*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.mic_vring* %2, %struct.mic_vring** %8, align 8
  store %struct.mic_copy_desc* %3, %struct.mic_copy_desc** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  %15 = load %struct.mic_copy_desc*, %struct.mic_copy_desc** %9, align 8
  %16 = getelementptr inbounds %struct.mic_copy_desc, %struct.mic_copy_desc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mic_copy_desc*, %struct.mic_copy_desc** %9, align 8
  %18 = getelementptr inbounds %struct.mic_copy_desc, %struct.mic_copy_desc* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @VIRTIO_ID_NET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr i8, i8* %23, i64 -4
  %25 = load %struct.mic_copy_desc*, %struct.mic_copy_desc** %9, align 8
  %26 = getelementptr inbounds %struct.mic_copy_desc, %struct.mic_copy_desc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  br label %37

30:                                               ; preds = %5
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.mic_copy_desc*, %struct.mic_copy_desc** %9, align 8
  %33 = getelementptr inbounds %struct.mic_copy_desc, %struct.mic_copy_desc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %31, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
