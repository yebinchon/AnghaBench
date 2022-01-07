; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan*, %struct.hci_conn* }
%struct.l2cap_chan = type { i64 }
%struct.hci_conn = type { i32 }

@SMP_CMD_PAIRING_FAIL = common dso_local global i32 0, align 4
@HCI_ERROR_AUTH_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i64)* @smp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_failure(%struct.l2cap_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 1
  %9 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  store %struct.hci_conn* %9, %struct.hci_conn** %5, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %10, i32 0, i32 0
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  store %struct.l2cap_chan* %12, %struct.l2cap_chan** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %17 = load i32, i32* @SMP_CMD_PAIRING_FAIL, align 4
  %18 = call i32 @smp_send_cmd(%struct.l2cap_conn* %16, i32 %17, i32 8, i64* %4)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %21 = load i32, i32* @HCI_ERROR_AUTH_FAILURE, align 4
  %22 = call i32 @mgmt_auth_failed(%struct.hci_conn* %20, i32 %21)
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %29 = call i32 @smp_chan_destroy(%struct.l2cap_conn* %28)
  br label %30

30:                                               ; preds = %27, %19
  ret void
}

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i64*) #1

declare dso_local i32 @mgmt_auth_failed(%struct.hci_conn*, i32) #1

declare dso_local i32 @smp_chan_destroy(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
