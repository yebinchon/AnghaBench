; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_le_create_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_le_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_le_create_conn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_CREATE_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_le_create_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_le_create_conn(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_le_create_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = load i32, i32* @HCI_OP_LE_CREATE_CONN, align 4
  %17 = call %struct.hci_cp_le_create_conn* @hci_sent_cmd_data(%struct.hci_dev* %15, i32 %16)
  store %struct.hci_cp_le_create_conn* %17, %struct.hci_cp_le_create_conn** %5, align 8
  %18 = load %struct.hci_cp_le_create_conn*, %struct.hci_cp_le_create_conn** %5, align 8
  %19 = icmp ne %struct.hci_cp_le_create_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %39

21:                                               ; preds = %14
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = call i32 @hci_dev_lock(%struct.hci_dev* %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load %struct.hci_cp_le_create_conn*, %struct.hci_cp_le_create_conn** %5, align 8
  %26 = getelementptr inbounds %struct.hci_cp_le_create_conn, %struct.hci_cp_le_create_conn* %25, i32 0, i32 3
  %27 = load %struct.hci_cp_le_create_conn*, %struct.hci_cp_le_create_conn** %5, align 8
  %28 = getelementptr inbounds %struct.hci_cp_le_create_conn, %struct.hci_cp_le_create_conn* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hci_cp_le_create_conn*, %struct.hci_cp_le_create_conn** %5, align 8
  %31 = getelementptr inbounds %struct.hci_cp_le_create_conn, %struct.hci_cp_le_create_conn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hci_cp_le_create_conn*, %struct.hci_cp_le_create_conn** %5, align 8
  %34 = getelementptr inbounds %struct.hci_cp_le_create_conn, %struct.hci_cp_le_create_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cs_le_create_conn(%struct.hci_dev* %24, i32* %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = call i32 @hci_dev_unlock(%struct.hci_dev* %37)
  br label %39

39:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_le_create_conn* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @cs_le_create_conn(%struct.hci_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
