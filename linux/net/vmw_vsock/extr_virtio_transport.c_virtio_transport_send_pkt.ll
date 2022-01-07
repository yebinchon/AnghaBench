; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_transport_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_transport_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_vsock = type { i64, i32, i32, i32, i32 }

@the_virtio_vsock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@virtio_vsock_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_vsock_pkt*)* @virtio_transport_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_send_pkt(%struct.virtio_vsock_pkt* %0) #0 {
  %2 = alloca %struct.virtio_vsock_pkt*, align 8
  %3 = alloca %struct.virtio_vsock*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_vsock_pkt* %0, %struct.virtio_vsock_pkt** %2, align 8
  %5 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i32, i32* @the_virtio_vsock, align 4
  %10 = call %struct.virtio_vsock* @rcu_dereference(i32 %9)
  store %struct.virtio_vsock* %10, %struct.virtio_vsock** %3, align 8
  %11 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %12 = icmp ne %struct.virtio_vsock* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %15 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %14)
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %20 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %30 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %31 = call i32 @virtio_transport_send_pkt_loopback(%struct.virtio_vsock* %29, %struct.virtio_vsock_pkt* %30)
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %18
  %33 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %34 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %38, i32 0, i32 4
  %40 = call i32 @atomic_inc(i32* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %43 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %2, align 8
  %46 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %45, i32 0, i32 1
  %47 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %47, i32 0, i32 3
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %51 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* @virtio_vsock_workqueue, align 4
  %54 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %55 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %54, i32 0, i32 1
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %41, %28, %13
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.virtio_vsock* @rcu_dereference(i32) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_send_pkt_loopback(%struct.virtio_vsock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
