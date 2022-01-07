; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_resume_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_resume_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.l2cap_conn*, %struct.smp_chan* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32 }
%struct.smp_chan = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @smp_resume_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_resume_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 1
  %8 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  store %struct.smp_chan* %8, %struct.smp_chan** %3, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 0
  %11 = load %struct.l2cap_conn*, %struct.l2cap_conn** %10, align 8
  store %struct.l2cap_conn* %11, %struct.l2cap_conn** %4, align 8
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %13 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %12, i32 0, i32 0
  %14 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  store %struct.hci_conn* %14, %struct.hci_conn** %5, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %15)
  %17 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACL_LINK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %24 = call i32 @bredr_pairing(%struct.l2cap_chan* %23)
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %27 = icmp ne %struct.smp_chan* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %42

29:                                               ; preds = %25
  %30 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %31 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 1
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %29
  %37 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %38 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %37, i32 0, i32 0
  %39 = call i32 @cancel_delayed_work(i32* %38)
  %40 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %41 = call i32 @smp_distribute_keys(%struct.smp_chan* %40)
  br label %42

42:                                               ; preds = %36, %35, %28, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @bredr_pairing(%struct.l2cap_chan*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
