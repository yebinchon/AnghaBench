; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_powered_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_powered_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@MGMT_OP_SET_POWERED = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@MGMT_STATUS_RFKILLED = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_set_powered_failed(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call %struct.mgmt_pending_cmd* @pending_find(i32 %7, %struct.hci_dev* %8)
  store %struct.mgmt_pending_cmd* %9, %struct.mgmt_pending_cmd** %5, align 8
  %10 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %11 = icmp ne %struct.mgmt_pending_cmd* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ERFKILL, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @MGMT_STATUS_RFKILLED, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mgmt_cmd_status(i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %33 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %32)
  br label %34

34:                                               ; preds = %22, %12
  ret void
}

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
