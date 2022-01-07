; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_set_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_set_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.virtio_vsock_sock* }
%struct.virtio_vsock_sock = type { i64, i64, i64, i64 }

@VIRTIO_VSOCK_MAX_BUF_SIZE = common dso_local global i64 0, align 8
@VIRTIO_VSOCK_TYPE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_transport_set_buffer_size(%struct.vsock_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.virtio_vsock_sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %7 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %6, i32 0, i32 0
  %8 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %7, align 8
  store %struct.virtio_vsock_sock* %8, %struct.virtio_vsock_sock** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @VIRTIO_VSOCK_MAX_BUF_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @VIRTIO_VSOCK_MAX_BUF_SIZE, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %17 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %27 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %33 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %37 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  %40 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %42 = load i32, i32* @VIRTIO_VSOCK_TYPE_STREAM, align 4
  %43 = call i32 @virtio_transport_send_credit_update(%struct.vsock_sock* %41, i32 %42, i32* null)
  ret void
}

declare dso_local i32 @virtio_transport_send_credit_update(%struct.vsock_sock*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
