; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_stop_discovery_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_stop_discovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"status %d\00", align 1
@MGMT_OP_STOP_DISCOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_stop_discovery_complete(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call i32 @hci_dev_lock(%struct.hci_dev* %8)
  %10 = load i32, i32* @MGMT_OP_STOP_DISCOVERY, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = call %struct.mgmt_pending_cmd* @pending_find(i32 %10, %struct.hci_dev* %11)
  store %struct.mgmt_pending_cmd* %12, %struct.mgmt_pending_cmd** %5, align 8
  %13 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %14 = icmp ne %struct.mgmt_pending_cmd* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %16, i32 0, i32 0
  %18 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %17, align 8
  %19 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mgmt_status(i32 %20)
  %22 = call i32 %18(%struct.mgmt_pending_cmd* %19, i32 %21)
  %23 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %24 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = call i32 @hci_dev_unlock(%struct.hci_dev* %26)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
