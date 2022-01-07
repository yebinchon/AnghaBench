; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_send_pkt_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_send_pkt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.virtio_vsock_sock*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.virtio_vsock_sock = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.virtio_vsock_pkt_info = type { i64, i64, i64, i64 }
%struct.virtio_vsock_pkt = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.virtio_vsock_pkt*)* }

@VIRTIO_VSOCK_MAX_PKT_BUF_SIZE = common dso_local global i64 0, align 8
@VIRTIO_VSOCK_OP_RW = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.virtio_vsock_pkt_info*)* @virtio_transport_send_pkt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_send_pkt_info(%struct.vsock_sock* %0, %struct.virtio_vsock_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.virtio_vsock_pkt_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.virtio_vsock_sock*, align 8
  %11 = alloca %struct.virtio_vsock_pkt*, align 8
  %12 = alloca i64, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.virtio_vsock_pkt_info* %1, %struct.virtio_vsock_pkt_info** %5, align 8
  %13 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %14 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = call i64 (...) @vm_sockets_get_local_cid()
  store i64 %16, i64* %6, align 8
  %17 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %18 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %22 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %27 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %31 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %36 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %43 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %42, i32 0, i32 0
  %44 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %43, align 8
  store %struct.virtio_vsock_sock* %44, %struct.virtio_vsock_sock** %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @VIRTIO_VSOCK_MAX_PKT_BUF_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @VIRTIO_VSOCK_MAX_PKT_BUF_SIZE, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @virtio_transport_get_credit(%struct.virtio_vsock_sock* %51, i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %58 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VIRTIO_VSOCK_OP_RW, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %90

65:                                               ; preds = %56, %50
  %66 = load %struct.virtio_vsock_pkt_info*, %struct.virtio_vsock_pkt_info** %5, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call %struct.virtio_vsock_pkt* @virtio_transport_alloc_pkt(%struct.virtio_vsock_pkt_info* %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  store %struct.virtio_vsock_pkt* %72, %struct.virtio_vsock_pkt** %11, align 8
  %73 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %11, align 8
  %74 = icmp ne %struct.virtio_vsock_pkt* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %65
  %76 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @virtio_transport_put_credit(%struct.virtio_vsock_sock* %76, i64 %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %90

81:                                               ; preds = %65
  %82 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %10, align 8
  %83 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %11, align 8
  %84 = call i32 @virtio_transport_inc_tx_pkt(%struct.virtio_vsock_sock* %82, %struct.virtio_vsock_pkt* %83)
  %85 = call %struct.TYPE_6__* (...) @virtio_transport_get_ops()
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (%struct.virtio_vsock_pkt*)*, i32 (%struct.virtio_vsock_pkt*)** %86, align 8
  %88 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %11, align 8
  %89 = call i32 %87(%struct.virtio_vsock_pkt* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %75, %62
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @vm_sockets_get_local_cid(...) #1

declare dso_local i64 @virtio_transport_get_credit(%struct.virtio_vsock_sock*, i64) #1

declare dso_local %struct.virtio_vsock_pkt* @virtio_transport_alloc_pkt(%struct.virtio_vsock_pkt_info*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @virtio_transport_put_credit(%struct.virtio_vsock_sock*, i64) #1

declare dso_local i32 @virtio_transport_inc_tx_pkt(%struct.virtio_vsock_sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local %struct.TYPE_6__* @virtio_transport_get_ops(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
