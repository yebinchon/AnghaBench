; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_peer_detach_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_peer_detach_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_event_data = type { i32 }
%struct.vmci_transport = type { i32, i32, i32 }
%struct.vmci_event_payload_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vmci_event_data*, i8*)* @vmci_transport_peer_detach_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_peer_detach_cb(i32 %0, %struct.vmci_event_data* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_event_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmci_transport*, align 8
  %8 = alloca %struct.vmci_event_payload_qp*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vmci_event_data* %1, %struct.vmci_event_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.vmci_transport*
  store %struct.vmci_transport* %10, %struct.vmci_transport** %7, align 8
  %11 = load %struct.vmci_event_data*, %struct.vmci_event_data** %5, align 8
  %12 = call %struct.vmci_event_payload_qp* @vmci_event_data_const_payload(%struct.vmci_event_data* %11)
  store %struct.vmci_event_payload_qp* %12, %struct.vmci_event_payload_qp** %8, align 8
  %13 = load %struct.vmci_event_payload_qp*, %struct.vmci_event_payload_qp** %8, align 8
  %14 = getelementptr inbounds %struct.vmci_event_payload_qp, %struct.vmci_event_payload_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @vmci_handle_is_invalid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %20 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmci_event_payload_qp*, %struct.vmci_event_payload_qp** %8, align 8
  %23 = getelementptr inbounds %struct.vmci_event_payload_qp, %struct.vmci_event_payload_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vmci_handle_is_equal(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18, %3
  br label %54

28:                                               ; preds = %18
  %29 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %30 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %33 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %50

37:                                               ; preds = %28
  %38 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %39 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bh_lock_sock(i32 %40)
  %42 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %43 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vmci_transport_handle_detach(i32 %44)
  %46 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %47 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bh_unlock_sock(i32 %48)
  br label %50

50:                                               ; preds = %37, %36
  %51 = load %struct.vmci_transport*, %struct.vmci_transport** %7, align 8
  %52 = getelementptr inbounds %struct.vmci_transport, %struct.vmci_transport* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  br label %54

54:                                               ; preds = %50, %27
  ret void
}

declare dso_local %struct.vmci_event_payload_qp* @vmci_event_data_const_payload(%struct.vmci_event_data*) #1

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_handle_is_equal(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bh_lock_sock(i32) #1

declare dso_local i32 @vmci_transport_handle_detach(i32) #1

declare dso_local i32 @bh_unlock_sock(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
