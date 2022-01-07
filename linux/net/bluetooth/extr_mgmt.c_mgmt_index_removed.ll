; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_index_removed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_index_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_ev_ext_index = type { i32, i32 }

@MGMT_STATUS_INVALID_INDEX = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@cmd_complete_rsp = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@MGMT_EV_UNCONF_INDEX_REMOVED = common dso_local global i32 0, align 4
@HCI_MGMT_UNCONF_INDEX_EVENTS = common dso_local global i32 0, align 4
@MGMT_EV_INDEX_REMOVED = common dso_local global i32 0, align 4
@HCI_MGMT_INDEX_EVENTS = common dso_local global i32 0, align 4
@MGMT_EV_EXT_INDEX_REMOVED = common dso_local global i32 0, align 4
@HCI_MGMT_EXT_INDEX_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_index_removed(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.mgmt_ev_ext_index, align 4
  %4 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load i32, i32* @MGMT_STATUS_INVALID_INDEX, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %39 [
    i32 128, label %16
    i32 129, label %37
  ]

16:                                               ; preds = %12
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = load i32, i32* @cmd_complete_rsp, align 4
  %19 = call i32 @mgmt_pending_foreach(i32 0, %struct.hci_dev* %17, i32 %18, i32* %4)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %22 = call i32 @hci_dev_test_flag(%struct.hci_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @MGMT_EV_UNCONF_INDEX_REMOVED, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = load i32, i32* @HCI_MGMT_UNCONF_INDEX_EVENTS, align 4
  %28 = call i32 @mgmt_index_event(i32 %25, %struct.hci_dev* %26, %struct.mgmt_ev_ext_index* null, i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %36

30:                                               ; preds = %16
  %31 = load i32, i32* @MGMT_EV_INDEX_REMOVED, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = load i32, i32* @HCI_MGMT_INDEX_EVENTS, align 4
  %34 = call i32 @mgmt_index_event(i32 %31, %struct.hci_dev* %32, %struct.mgmt_ev_ext_index* null, i32 0, i32 %33)
  %35 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %40

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 2, i32* %38, align 4
  br label %40

39:                                               ; preds = %12
  br label %49

40:                                               ; preds = %37, %36
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @MGMT_EV_EXT_INDEX_REMOVED, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %47 = load i32, i32* @HCI_MGMT_EXT_INDEX_EVENTS, align 4
  %48 = call i32 @mgmt_index_event(i32 %45, %struct.hci_dev* %46, %struct.mgmt_ev_ext_index* %3, i32 8, i32 %47)
  br label %49

49:                                               ; preds = %40, %39, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mgmt_pending_foreach(i32, %struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_index_event(i32, %struct.hci_dev*, %struct.mgmt_ev_ext_index*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
