; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_enter_active_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_enter_active_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i64, i32 }
%struct.hci_cp_exit_sniff_mode = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"hcon %p mode %d\00", align 1
@HCI_CM_SNIFF = common dso_local global i64 0, align 8
@HCI_CONN_POWER_SAVE = common dso_local global i32 0, align 4
@HCI_CONN_MODE_CHANGE_PEND = common dso_local global i32 0, align 4
@HCI_OP_EXIT_SNIFF_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_conn_enter_active_mode(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.hci_cp_exit_sniff_mode, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %5, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %10, i64 %13)
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HCI_CM_SNIFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* @HCI_CONN_POWER_SAVE, align 4
  %23 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 3
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %47

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @HCI_CONN_MODE_CHANGE_PEND, align 4
  %33 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 3
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.hci_cp_exit_sniff_mode, %struct.hci_cp_exit_sniff_mode* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %44 = load i32, i32* @HCI_OP_EXIT_SNIFF_MODE, align 4
  %45 = call i32 @hci_send_cmd(%struct.hci_dev* %43, i32 %44, i32 4, %struct.hci_cp_exit_sniff_mode* %6)
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46, %30, %20
  %48 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  %58 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @msecs_to_jiffies(i64 %60)
  %62 = call i32 @queue_delayed_work(i32 %55, i32* %57, i32 %61)
  br label %63

63:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_exit_sniff_mode*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
