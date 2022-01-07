; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_send_post_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_send_post_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_send_notify_data = type { i32 }
%struct.vsock_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_MAX_DGRAM_RESENDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%p unable to send wrote notification to peer\0A\00", align 1
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
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmci_transport_send_notify_data* %2, %struct.vmci_transport_send_notify_data** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %13)
  store %struct.vsock_sock* %14, %struct.vsock_sock** %9, align 8
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %17 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @vmci_qpair_produce_buf_ready(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %49, %26
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %29 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RCV_SHUTDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @VMCI_TRANSPORT_MAX_DGRAM_RESENDS, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %34, %27
  %42 = phi i1 [ false, %34 ], [ false, %27 ], [ %40, %37 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = call i32 @vmci_transport_send_wrote(%struct.sock* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %27

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @VMCI_TRANSPORT_MAX_DGRAM_RESENDS, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.sock* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @vmci_qpair_produce_buf_ready(i32) #1

declare dso_local %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_send_wrote(%struct.sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
