; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_le_set_scan_enable_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_le_set_scan_enable_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state, i32, i32 }
%struct.discovery_state = type { i32, i32, i32, i32, i32, i32, i32 }

@HCI_LE_SCAN = common dso_local global i32 0, align 4
@LE_SCAN_ACTIVE = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@HCI_LE_SCAN_INTERRUPTED = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@DISCOVERY_FINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"use of reserved LE_Scan_Enable param %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @le_set_scan_enable_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_set_scan_enable_complete(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.discovery_state*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = call i32 @hci_dev_lock(%struct.hci_dev* %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %81 [
    i32 128, label %9
    i32 129, label %22
  ]

9:                                                ; preds = %2
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = load i32, i32* @HCI_LE_SCAN, align 4
  %12 = call i32 @hci_dev_set_flag(%struct.hci_dev* %10, i32 %11)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LE_SCAN_ACTIVE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @clear_pending_adv_report(%struct.hci_dev* %19)
  br label %21

21:                                               ; preds = %18, %9
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @has_pending_adv_report(%struct.hci_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  store %struct.discovery_state* %28, %struct.discovery_state** %5, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %31 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %30, i32 0, i32 6
  %32 = load i32, i32* @LE_LINK, align 4
  %33 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %34 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %37 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %40 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %43 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %46 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mgmt_device_found(%struct.hci_dev* %29, i32* %31, i32 %32, i32 %35, i32* null, i32 %38, i32 %41, i32 %44, i32 %47, i32* null, i32 0)
  br label %49

49:                                               ; preds = %26, %22
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 1
  %52 = call i32 @cancel_delayed_work(i32* %51)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = load i32, i32* @HCI_LE_SCAN, align 4
  %55 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %53, i32 %54)
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load i32, i32* @HCI_LE_SCAN_INTERRUPTED, align 4
  %58 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @DISCOVERY_STOPPED, align 4
  %63 = call i32 @hci_discovery_set_state(%struct.hci_dev* %61, i32 %62)
  br label %80

64:                                               ; preds = %49
  %65 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %66 = load i32, i32* @HCI_LE_ADV, align 4
  %67 = call i32 @hci_dev_test_flag(%struct.hci_dev* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DISCOVERY_FINDING, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = call i32 @hci_req_reenable_advertising(%struct.hci_dev* %77)
  br label %79

79:                                               ; preds = %76, %69, %64
  br label %80

80:                                               ; preds = %79, %60
  br label %85

81:                                               ; preds = %2
  %82 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @bt_dev_err(%struct.hci_dev* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %80, %21
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = call i32 @hci_dev_unlock(%struct.hci_dev* %86)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @clear_pending_adv_report(%struct.hci_dev*) #1

declare dso_local i32 @has_pending_adv_report(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_device_found(%struct.hci_dev*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_discovery_set_state(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_reenable_advertising(%struct.hci_dev*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
