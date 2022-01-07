; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i64, i64, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_read_clock_offset = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_OP_READ_CLOCK_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_disconnect(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.hci_cp_read_clock_offset, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %7)
  %9 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACL_LINK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_CONNECTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %28 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BT_CONFIG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26, %20
  %33 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %34, align 8
  store %struct.hci_dev* %35, %struct.hci_dev** %5, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = getelementptr inbounds %struct.hci_cp_read_clock_offset, %struct.hci_cp_read_clock_offset* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %42 = load i32, i32* @HCI_OP_READ_CLOCK_OFFSET, align 4
  %43 = call i32 @hci_send_cmd(%struct.hci_dev* %41, i32 %42, i32 4, %struct.hci_cp_read_clock_offset* %6)
  br label %44

44:                                               ; preds = %32, %26, %14, %2
  %45 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @hci_abort_conn(%struct.hci_conn* %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_read_clock_offset*) #1

declare dso_local i32 @hci_abort_conn(%struct.hci_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
