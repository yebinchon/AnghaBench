; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_switch_role.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_switch_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32 }
%struct.hci_cp_switch_role = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@HCI_CONN_RSWITCH_PEND = common dso_local global i32 0, align 4
@HCI_OP_SWITCH_ROLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_switch_role(%struct.hci_conn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_cp_switch_role, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %7)
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %11 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* @HCI_CONN_RSWITCH_PEND, align 4
  %17 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 3
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hci_cp_switch_role, %struct.hci_cp_switch_role* %6, i32 0, i32 1
  %23 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 2
  %25 = call i32 @bacpy(i32* %22, i32* %24)
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.hci_cp_switch_role, %struct.hci_cp_switch_role* %6, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HCI_OP_SWITCH_ROLE, align 4
  %32 = call i32 @hci_send_cmd(i32 %30, i32 %31, i32 16, %struct.hci_cp_switch_role* %6)
  br label %33

33:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_switch_role*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
