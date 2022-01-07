; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_start_discovery_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_start_discovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"status %d\00", align 1
@MGMT_OP_START_DISCOVERY = common dso_local global i32 0, align 4
@MGMT_OP_START_SERVICE_DISCOVERY = common dso_local global i32 0, align 4
@MGMT_OP_START_LIMITED_DISCOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_start_discovery_complete(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call i32 @hci_dev_lock(%struct.hci_dev* %8)
  %10 = load i32, i32* @MGMT_OP_START_DISCOVERY, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = call %struct.mgmt_pending_cmd* @pending_find(i32 %10, %struct.hci_dev* %11)
  store %struct.mgmt_pending_cmd* %12, %struct.mgmt_pending_cmd** %5, align 8
  %13 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %14 = icmp ne %struct.mgmt_pending_cmd* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MGMT_OP_START_SERVICE_DISCOVERY, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call %struct.mgmt_pending_cmd* @pending_find(i32 %16, %struct.hci_dev* %17)
  store %struct.mgmt_pending_cmd* %18, %struct.mgmt_pending_cmd** %5, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %21 = icmp ne %struct.mgmt_pending_cmd* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @MGMT_OP_START_LIMITED_DISCOVERY, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call %struct.mgmt_pending_cmd* @pending_find(i32 %23, %struct.hci_dev* %24)
  store %struct.mgmt_pending_cmd* %25, %struct.mgmt_pending_cmd** %5, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %28 = icmp ne %struct.mgmt_pending_cmd* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %30, i32 0, i32 0
  %32 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %31, align 8
  %33 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mgmt_status(i32 %34)
  %36 = call i32 %32(%struct.mgmt_pending_cmd* %33, i32 %35)
  %37 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %38 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %37)
  br label %39

39:                                               ; preds = %29, %26
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call i32 @hci_dev_unlock(%struct.hci_dev* %40)
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
