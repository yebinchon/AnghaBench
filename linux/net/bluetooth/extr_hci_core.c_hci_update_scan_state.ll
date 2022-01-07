; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_update_scan_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_update_scan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s scan 0x%02x\00", align 1
@SCAN_PAGE = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@SCAN_INQUIRY = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_update_scan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_update_scan_state(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SCAN_PAGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* @HCI_CONNECTABLE, align 4
  %19 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @HCI_CONNECTABLE, align 4
  %26 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SCAN_INQUIRY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %35 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %42 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %40, i32 %41)
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %45 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = load i32, i32* @HCI_MGMT, align 4
  %49 = call i64 @hci_dev_test_flag(%struct.hci_dev* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %75

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55, %52
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %61 = call i32 @hci_dev_set_flag(%struct.hci_dev* %59, i32 %60)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = load i32, i32* @HCI_LE_ENABLED, align 4
  %64 = call i64 @hci_dev_test_flag(%struct.hci_dev* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hci_req_update_adv_data(%struct.hci_dev* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = call i32 @mgmt_new_settings(%struct.hci_dev* %73)
  br label %75

75:                                               ; preds = %51, %72, %55
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_update_adv_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_new_settings(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
