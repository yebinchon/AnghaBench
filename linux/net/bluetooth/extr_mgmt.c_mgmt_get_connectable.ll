; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_get_connectable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_get_connectable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { %struct.mgmt_mode* }
%struct.mgmt_mode = type { i32 }

@MGMT_OP_SET_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_connectable(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.mgmt_pending_cmd*, align 8
  %5 = alloca %struct.mgmt_mode*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.mgmt_pending_cmd* @pending_find(i32 %6, %struct.hci_dev* %7)
  store %struct.mgmt_pending_cmd* %8, %struct.mgmt_pending_cmd** %4, align 8
  %9 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %4, align 8
  %10 = icmp ne %struct.mgmt_pending_cmd* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %12, i32 0, i32 0
  %14 = load %struct.mgmt_mode*, %struct.mgmt_mode** %13, align 8
  store %struct.mgmt_mode* %14, %struct.mgmt_mode** %5, align 8
  %15 = load %struct.mgmt_mode*, %struct.mgmt_mode** %5, align 8
  %16 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @HCI_CONNECTABLE, align 4
  %21 = call i32 @hci_dev_test_flag(%struct.hci_dev* %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
