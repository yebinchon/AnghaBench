; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_ready_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_ready_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.l2cap_chan*, %struct.hci_conn* }
%struct.hci_conn = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @smp_ready_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_ready_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 0
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %7, %struct.l2cap_conn** %3, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %9 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %8, i32 0, i32 1
  %10 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  store %struct.hci_conn* %10, %struct.hci_conn** %4, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %11)
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %15 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %14, i32 0, i32 0
  store %struct.l2cap_chan* %13, %struct.l2cap_chan** %15, align 8
  %16 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACL_LINK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %23 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %29 = call i32 @bredr_pairing(%struct.l2cap_chan* %28)
  br label %30

30:                                               ; preds = %27, %21, %1
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bredr_pairing(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
