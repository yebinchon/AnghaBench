; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_index_added.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_index_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_ev_ext_index = type { i32, i32 }

@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@MGMT_EV_UNCONF_INDEX_ADDED = common dso_local global i32 0, align 4
@HCI_MGMT_UNCONF_INDEX_EVENTS = common dso_local global i32 0, align 4
@MGMT_EV_INDEX_ADDED = common dso_local global i32 0, align 4
@HCI_MGMT_INDEX_EVENTS = common dso_local global i32 0, align 4
@MGMT_EV_EXT_INDEX_ADDED = common dso_local global i32 0, align 4
@HCI_MGMT_EXT_INDEX_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_index_added(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.mgmt_ev_ext_index, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 2
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %34 [
    i32 128, label %14
    i32 129, label %32
  ]

14:                                               ; preds = %10
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %17 = call i32 @hci_dev_test_flag(%struct.hci_dev* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @MGMT_EV_UNCONF_INDEX_ADDED, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = load i32, i32* @HCI_MGMT_UNCONF_INDEX_EVENTS, align 4
  %23 = call i32 @mgmt_index_event(i32 %20, %struct.hci_dev* %21, %struct.mgmt_ev_ext_index* null, i32 0, i32 %22)
  %24 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load i32, i32* @MGMT_EV_INDEX_ADDED, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = load i32, i32* @HCI_MGMT_INDEX_EVENTS, align 4
  %29 = call i32 @mgmt_index_event(i32 %26, %struct.hci_dev* %27, %struct.mgmt_ev_ext_index* null, i32 0, i32 %28)
  %30 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %19
  br label %35

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 0
  store i32 2, i32* %33, align 4
  br label %35

34:                                               ; preds = %10
  br label %44

35:                                               ; preds = %32, %31
  %36 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.mgmt_ev_ext_index, %struct.mgmt_ev_ext_index* %3, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @MGMT_EV_EXT_INDEX_ADDED, align 4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = load i32, i32* @HCI_MGMT_EXT_INDEX_EVENTS, align 4
  %43 = call i32 @mgmt_index_event(i32 %40, %struct.hci_dev* %41, %struct.mgmt_ev_ext_index* %3, i32 8, i32 %42)
  br label %44

44:                                               ; preds = %35, %34, %9
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_index_event(i32, %struct.hci_dev*, %struct.mgmt_ev_ext_index*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
