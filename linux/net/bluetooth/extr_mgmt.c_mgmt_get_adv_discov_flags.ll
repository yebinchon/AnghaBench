; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_get_adv_discov_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_get_adv_discov_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { %struct.mgmt_mode* }
%struct.mgmt_mode = type { i32 }

@MGMT_OP_SET_DISCOVERABLE = common dso_local global i32 0, align 4
@LE_AD_GENERAL = common dso_local global i32 0, align 4
@LE_AD_LIMITED = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_adv_discov_flags(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.mgmt_pending_cmd*, align 8
  %5 = alloca %struct.mgmt_mode*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.mgmt_pending_cmd* @pending_find(i32 %6, %struct.hci_dev* %7)
  store %struct.mgmt_pending_cmd* %8, %struct.mgmt_pending_cmd** %4, align 8
  %9 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %4, align 8
  %10 = icmp ne %struct.mgmt_pending_cmd* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %12, i32 0, i32 0
  %14 = load %struct.mgmt_mode*, %struct.mgmt_mode** %13, align 8
  store %struct.mgmt_mode* %14, %struct.mgmt_mode** %5, align 8
  %15 = load %struct.mgmt_mode*, %struct.mgmt_mode** %5, align 8
  %16 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @LE_AD_GENERAL, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %11
  %22 = load %struct.mgmt_mode*, %struct.mgmt_mode** %5, align 8
  %23 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @LE_AD_LIMITED, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  br label %46

30:                                               ; preds = %1
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %33 = call i64 @hci_dev_test_flag(%struct.hci_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @LE_AD_LIMITED, align 4
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %30
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %40 = call i64 @hci_dev_test_flag(%struct.hci_dev* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @LE_AD_GENERAL, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %29
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %42, %35, %26, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
