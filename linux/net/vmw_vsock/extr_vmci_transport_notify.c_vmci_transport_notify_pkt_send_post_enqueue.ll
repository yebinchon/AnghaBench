; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_send_post_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_send_post_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_send_notify_data = type { i64 }
%struct.vsock_sock = type { i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_MAX_DGRAM_RESENDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%p unable to send wrote notify to peer\0A\00", align 1
@peer_waiting_read = common dso_local global i32 0, align 4
@produce_q_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, %struct.vmci_transport_send_notify_data*)* @vmci_transport_notify_pkt_send_post_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_notify_pkt_send_post_enqueue(%struct.sock* %0, i64 %1, %struct.vmci_transport_send_notify_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmci_transport_send_notify_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vsock_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmci_transport_send_notify_data* %2, %struct.vmci_transport_send_notify_data** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %12)
  store %struct.vsock_sock* %13, %struct.vsock_sock** %9, align 8
  %14 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %15 = call i64 @vmci_transport_notify_waiting_read(%struct.vsock_sock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %40, %17
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %20 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RCV_SHUTDOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @VMCI_TRANSPORT_MAX_DGRAM_RESENDS, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25, %18
  %33 = phi i1 [ false, %25 ], [ false, %18 ], [ %31, %28 ]
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @vmci_transport_send_wrote(%struct.sock* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %18

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @VMCI_TRANSPORT_MAX_DGRAM_RESENDS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.sock* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @vmci_transport_notify_waiting_read(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_send_wrote(%struct.sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
