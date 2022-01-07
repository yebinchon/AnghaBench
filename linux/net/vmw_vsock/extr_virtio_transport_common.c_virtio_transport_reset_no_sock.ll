; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_reset_no_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_reset_no_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.virtio_transport = type { i32 (%struct.virtio_vsock_pkt*)* }
%struct.virtio_vsock_pkt_info = type { i64, i64, i32 }

@VIRTIO_VSOCK_OP_RST = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_vsock_pkt*)* @virtio_transport_reset_no_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_reset_no_sock(%struct.virtio_vsock_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_vsock_pkt*, align 8
  %4 = alloca %struct.virtio_transport*, align 8
  %5 = alloca %struct.virtio_vsock_pkt*, align 8
  %6 = alloca %struct.virtio_vsock_pkt_info, align 8
  store %struct.virtio_vsock_pkt* %0, %struct.virtio_vsock_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %6, i32 0, i32 0
  %8 = load i64, i64* @VIRTIO_VSOCK_OP_RST, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %6, i32 0, i32 1
  %10 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %6, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %17 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le16_to_cpu(i32 %19)
  %21 = load i64, i64* @VIRTIO_VSOCK_OP_RST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le64_to_cpu(i32 %28)
  %30 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %36 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %41 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call %struct.virtio_vsock_pkt* @virtio_transport_alloc_pkt(%struct.virtio_vsock_pkt_info* %6, i32 0, i32 %29, i32 %34, i32 %39, i32 %44)
  store %struct.virtio_vsock_pkt* %45, %struct.virtio_vsock_pkt** %5, align 8
  %46 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %47 = icmp ne %struct.virtio_vsock_pkt* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %24
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %24
  %52 = call %struct.virtio_transport* (...) @virtio_transport_get_ops()
  store %struct.virtio_transport* %52, %struct.virtio_transport** %4, align 8
  %53 = load %struct.virtio_transport*, %struct.virtio_transport** %4, align 8
  %54 = icmp ne %struct.virtio_transport* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %57 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %56)
  %58 = load i32, i32* @ENOTCONN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.virtio_transport*, %struct.virtio_transport** %4, align 8
  %62 = getelementptr inbounds %struct.virtio_transport, %struct.virtio_transport* %61, i32 0, i32 0
  %63 = load i32 (%struct.virtio_vsock_pkt*)*, i32 (%struct.virtio_vsock_pkt*)** %62, align 8
  %64 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %65 = call i32 %63(%struct.virtio_vsock_pkt* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %55, %48, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.virtio_vsock_pkt* @virtio_transport_alloc_pkt(%struct.virtio_vsock_pkt_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.virtio_transport* @virtio_transport_get_ops(...) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
