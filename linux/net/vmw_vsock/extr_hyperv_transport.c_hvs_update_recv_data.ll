; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_update_recv_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_update_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsock = type { i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.hvs_recv_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HVS_MTU_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvsock*)* @hvs_update_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_update_recv_data(%struct.hvsock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvsock*, align 8
  %4 = alloca %struct.hvs_recv_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.hvsock* %0, %struct.hvsock** %3, align 8
  %6 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %7 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = inttoptr i64 %9 to %struct.hvs_recv_buf*
  store %struct.hvs_recv_buf* %10, %struct.hvs_recv_buf** %4, align 8
  %11 = load %struct.hvs_recv_buf*, %struct.hvs_recv_buf** %4, align 8
  %12 = getelementptr inbounds %struct.hvs_recv_buf, %struct.hvs_recv_buf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @HVS_MTU_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @SEND_SHUTDOWN, align 4
  %26 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %27 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %35 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %37 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
