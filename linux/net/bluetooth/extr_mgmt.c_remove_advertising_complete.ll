; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_advertising_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_advertising_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32, i32, i32, %struct.mgmt_cp_remove_advertising* }
%struct.mgmt_cp_remove_advertising = type { i32 }
%struct.mgmt_rp_remove_advertising = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"status %d\00", align 1
@MGMT_OP_REMOVE_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @remove_advertising_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_advertising_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_pending_cmd*, align 8
  %8 = alloca %struct.mgmt_cp_remove_advertising*, align 8
  %9 = alloca %struct.mgmt_rp_remove_advertising, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = call i32 @hci_dev_lock(%struct.hci_dev* %12)
  %14 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = call %struct.mgmt_pending_cmd* @pending_find(i32 %14, %struct.hci_dev* %15)
  store %struct.mgmt_pending_cmd* %16, %struct.mgmt_pending_cmd** %7, align 8
  %17 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %18 = icmp ne %struct.mgmt_pending_cmd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %21, i32 0, i32 3
  %23 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %22, align 8
  store %struct.mgmt_cp_remove_advertising* %23, %struct.mgmt_cp_remove_advertising** %8, align 8
  %24 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %8, align 8
  %25 = getelementptr inbounds %struct.mgmt_cp_remove_advertising, %struct.mgmt_cp_remove_advertising* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mgmt_rp_remove_advertising, %struct.mgmt_rp_remove_advertising* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %38 = call i32 @mgmt_cmd_complete(i32 %30, i32 %33, i32 %36, i32 %37, %struct.mgmt_rp_remove_advertising* %9, i32 4)
  %39 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %40 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %39)
  br label %41

41:                                               ; preds = %20, %19
  %42 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %43 = call i32 @hci_dev_unlock(%struct.hci_dev* %42)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, %struct.mgmt_rp_remove_advertising*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
