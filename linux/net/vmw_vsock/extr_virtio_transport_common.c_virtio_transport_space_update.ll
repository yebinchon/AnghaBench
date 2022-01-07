; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_space_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_space_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vsock_sock = type { %struct.virtio_vsock_sock* }
%struct.virtio_vsock_sock = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_space_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_space_update(%struct.sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.virtio_vsock_pkt*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  %6 = alloca %struct.virtio_vsock_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %8)
  store %struct.vsock_sock* %9, %struct.vsock_sock** %5, align 8
  %10 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %11 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %10, i32 0, i32 0
  %12 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %11, align 8
  store %struct.virtio_vsock_sock* %12, %struct.virtio_vsock_sock** %6, align 8
  %13 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %14 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %22 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %24 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le32_to_cpu(i32 %26)
  %28 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %29 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %31 = call i32 @virtio_transport_has_space(%struct.vsock_sock* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %33 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_has_space(%struct.vsock_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
