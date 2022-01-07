; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_connected.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 (%struct.sock*)*, i32 (%struct.sock*)* }
%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vsock_sock = type { i32 }

@VIRTIO_VSOCK_SHUTDOWN_RCV = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_SHUTDOWN_SEND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_recv_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_recv_connected(%struct.sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.virtio_vsock_pkt*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %8)
  store %struct.vsock_sock* %9, %struct.vsock_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %11 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  switch i32 %14, label %98 [
    i32 129, label %15
    i32 131, label %25
    i32 128, label %31
    i32 130, label %95
  ]

15:                                               ; preds = %2
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %17 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %18 = call i32 @virtio_transport_recv_enqueue(%struct.vsock_sock* %16, %struct.virtio_vsock_pkt* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 2
  %21 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %20, align 8
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 %21(%struct.sock* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 %28(%struct.sock* %29)
  br label %101

31:                                               ; preds = %2
  %32 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %33 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load i32, i32* @VIRTIO_VSOCK_SHUTDOWN_RCV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @RCV_SHUTDOWN, align 4
  %42 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %43 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %48 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32, i32* @VIRTIO_VSOCK_SHUTDOWN_SEND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @SEND_SHUTDOWN, align 4
  %57 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %58 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %63 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SHUTDOWN_MASK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %69 = call i32 @vsock_stream_has_data(%struct.vsock_sock* %68)
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load i32, i32* @SOCK_DONE, align 4
  %74 = call i32 @sock_flag(%struct.sock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %78 = call i32 @virtio_transport_reset(%struct.vsock_sock* %77, i32* null)
  %79 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %80 = call i32 @virtio_transport_do_close(%struct.vsock_sock* %79, i32 1)
  br label %81

81:                                               ; preds = %76, %71, %67, %61
  %82 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %83 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  %91 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %90, align 8
  %92 = load %struct.sock*, %struct.sock** %4, align 8
  %93 = call i32 %91(%struct.sock* %92)
  br label %94

94:                                               ; preds = %88, %81
  br label %101

95:                                               ; preds = %2
  %96 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %97 = call i32 @virtio_transport_do_close(%struct.vsock_sock* %96, i32 1)
  br label %101

98:                                               ; preds = %2
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %95, %94, %25
  %102 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %103 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_recv_enqueue(%struct.vsock_sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @vsock_stream_has_data(%struct.vsock_sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @virtio_transport_reset(%struct.vsock_sock*, i32*) #1

declare dso_local i32 @virtio_transport_do_close(%struct.vsock_sock*, i32) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
