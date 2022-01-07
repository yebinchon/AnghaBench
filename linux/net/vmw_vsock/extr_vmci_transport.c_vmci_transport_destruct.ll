; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 (%struct.vsock_sock*)* }

@vmci_transport_cleanup_lock = common dso_local global i32 0, align 4
@vmci_transport_cleanup_list = common dso_local global i32 0, align 4
@vmci_transport_cleanup_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsock_sock*)* @vmci_transport_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_destruct(%struct.vsock_sock* %0) #0 {
  %2 = alloca %struct.vsock_sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %2, align 8
  %3 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %4 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %3)
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %9 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %13 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %16 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %20 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %7
  %25 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %26 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.vsock_sock*)*, i32 (%struct.vsock_sock*)** %29, align 8
  %31 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %32 = call i32 %30(%struct.vsock_sock* %31)
  br label %33

33:                                               ; preds = %24, %7
  %34 = call i32 @spin_lock_bh(i32* @vmci_transport_cleanup_lock)
  %35 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %36 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %37, i32* @vmci_transport_cleanup_list)
  %39 = call i32 @spin_unlock_bh(i32* @vmci_transport_cleanup_lock)
  %40 = call i32 @schedule_work(i32* @vmci_transport_cleanup_work)
  %41 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %42 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %33, %6
  ret void
}

declare dso_local %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
