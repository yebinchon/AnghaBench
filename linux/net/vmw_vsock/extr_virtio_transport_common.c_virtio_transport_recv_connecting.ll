; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_connecting.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32 (%struct.sock*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_vsock_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vsock_sock = type { i32 }

@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_recv_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_recv_connecting(%struct.sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.virtio_vsock_pkt*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %6, align 8
  %11 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 130, label %32
    i32 128, label %33
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @TCP_ESTABLISHED, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @SS_CONNECTED, align 4
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %26 = call i32 @vsock_insert_connected(%struct.vsock_sock* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 3
  %29 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %28, align 8
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 %29(%struct.sock* %30)
  br label %39

32:                                               ; preds = %2
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @ECONNRESET, align 4
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @EPROTO, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %32, %16
  store i32 0, i32* %3, align 4
  br label %56

40:                                               ; preds = %35, %33
  %41 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %42 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %43 = call i32 @virtio_transport_reset(%struct.vsock_sock* %41, %struct.virtio_vsock_pkt* %42)
  %44 = load i32, i32* @TCP_CLOSE, align 4
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 %52(%struct.sock* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %40, %39
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @vsock_insert_connected(%struct.vsock_sock*) #1

declare dso_local i32 @virtio_transport_reset(%struct.vsock_sock*, %struct.virtio_vsock_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
