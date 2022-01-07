; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_name_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_name_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_cp_set_local_name = type { i32 }
%struct.mgmt_pending_cmd = type { i32, %struct.mgmt_cp_set_local_name* }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@MGMT_OP_SET_LOCAL_NAME = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LOCAL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64, i32)* @set_name_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_name_complete(%struct.hci_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_cp_set_local_name*, align 8
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call i32 @hci_dev_lock(%struct.hci_dev* %11)
  %13 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = call %struct.mgmt_pending_cmd* @pending_find(i32 %13, %struct.hci_dev* %14)
  store %struct.mgmt_pending_cmd* %15, %struct.mgmt_pending_cmd** %8, align 8
  %16 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %17 = icmp ne %struct.mgmt_pending_cmd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %20, i32 0, i32 1
  %22 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %21, align 8
  store %struct.mgmt_cp_set_local_name* %22, %struct.mgmt_cp_set_local_name** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @mgmt_status(i64 %33)
  %35 = call i32 @mgmt_cmd_status(i32 %28, i32 %31, i32 %32, i32 %34)
  br label %55

36:                                               ; preds = %19
  %37 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %44 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %7, align 8
  %45 = call i32 @mgmt_cmd_complete(i32 %39, i32 %42, i32 %43, i32 0, %struct.mgmt_cp_set_local_name* %44, i32 4)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = load i32, i32* @HCI_LE_ADV, align 4
  %48 = call i64 @hci_dev_test_flag(%struct.hci_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %52 = load i32, i32* @MGMT_ADV_FLAG_LOCAL_NAME, align 4
  %53 = call i32 @adv_expire(%struct.hci_dev* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %36
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %57 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %56)
  br label %58

58:                                               ; preds = %55, %18
  %59 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %60 = call i32 @hci_dev_unlock(%struct.hci_dev* %59)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_status(i64) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, %struct.mgmt_cp_set_local_name*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @adv_expire(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
