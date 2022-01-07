; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_check_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_check_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@HCI_CONN_AES_CCM = common dso_local global i32 0, align 4
@HCI_LK_AUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_check_link_mode(%struct.hci_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %4 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %4)
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HCI_SC_ONLY, align 4
  %10 = call i64 @hci_dev_test_flag(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %14 = call i32 @hci_conn_sc_enabled(%struct.hci_conn* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %18 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %12
  store i32 0, i32* %2, align 4
  br label %42

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %32 = call i64 @hci_conn_ssp_enabled(%struct.hci_conn* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %36 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 1
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %34, %30
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i64 @hci_dev_test_flag(i32, i32) #1

declare dso_local i32 @hci_conn_sc_enabled(%struct.hci_conn*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_conn_ssp_enabled(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
