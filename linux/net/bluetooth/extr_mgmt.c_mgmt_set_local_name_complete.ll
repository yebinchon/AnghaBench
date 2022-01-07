; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_local_name_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_local_name_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64* }
%struct.mgmt_cp_set_local_name = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32* }

@HCI_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@HCI_MAX_SHORT_NAME_LENGTH = common dso_local global i32 0, align 4
@MGMT_OP_SET_LOCAL_NAME = common dso_local global i32 0, align 4
@MGMT_OP_SET_POWERED = common dso_local global i32 0, align 4
@MGMT_EV_LOCAL_NAME_CHANGED = common dso_local global i32 0, align 4
@HCI_MGMT_LOCAL_NAME_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_set_local_name_complete(%struct.hci_dev* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mgmt_cp_set_local_name, align 4
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %68

12:                                               ; preds = %3
  %13 = call i32 @memset(%struct.mgmt_cp_set_local_name* %7, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* @HCI_MAX_NAME_LENGTH, align 4
  %18 = call i32 @memcpy(i32 %15, i64* %16, i32 %17)
  %19 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* @HCI_MAX_SHORT_NAME_LENGTH, align 4
  %25 = call i32 @memcpy(i32 %20, i64* %23, i32 %24)
  %26 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = call %struct.mgmt_pending_cmd* @pending_find(i32 %26, %struct.hci_dev* %27)
  store %struct.mgmt_pending_cmd* %28, %struct.mgmt_pending_cmd** %8, align 8
  %29 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %30 = icmp ne %struct.mgmt_pending_cmd* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %12
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @memcpy(i32 %34, i64* %35, i32 4)
  %37 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = call %struct.mgmt_pending_cmd* @pending_find(i32 %37, %struct.hci_dev* %38)
  %40 = icmp ne %struct.mgmt_pending_cmd* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %68

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* @MGMT_EV_LOCAL_NAME_CHANGED, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = load i32, i32* @HCI_MGMT_LOCAL_NAME_EVENTS, align 4
  %47 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %48 = icmp ne %struct.mgmt_pending_cmd* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32* [ %52, %49 ], [ null, %53 ]
  %56 = call i32 @mgmt_limited_event(i32 %44, %struct.hci_dev* %45, %struct.mgmt_cp_set_local_name* %7, i32 8, i32 %46, i32* %55)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %58 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %59 = icmp ne %struct.mgmt_pending_cmd* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32* [ %63, %60 ], [ null, %64 ]
  %67 = call i32 @ext_info_changed(%struct.hci_dev* %57, i32* %66)
  br label %68

68:                                               ; preds = %65, %41, %11
  ret void
}

declare dso_local i32 @memset(%struct.mgmt_cp_set_local_name*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, %struct.mgmt_cp_set_local_name*, i32, i32, i32*) #1

declare dso_local i32 @ext_info_changed(%struct.hci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
