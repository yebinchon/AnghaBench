; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_le_support.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_le_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @mgmt_le_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_le_support(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %5 = call i32 @lmp_le_capable(%struct.hci_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  store i32 %8, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = load i32, i32* @HCI_LE_ENABLED, align 4
  %12 = call i32 @hci_dev_test_flag(%struct.hci_dev* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
