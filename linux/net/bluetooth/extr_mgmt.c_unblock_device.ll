; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_unblock_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_unblock_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_unblock_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_UNBLOCK_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_EV_DEVICE_UNBLOCKED = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @unblock_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unblock_device(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_unblock_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_unblock_device*
  store %struct.mgmt_cp_unblock_device* %14, %struct.mgmt_cp_unblock_device** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %20 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bdaddr_type_is_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MGMT_OP_UNBLOCK_DEVICE, align 4
  %31 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %32 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %33 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %32, i32 0, i32 0
  %34 = call i32 @mgmt_cmd_complete(%struct.sock* %26, i32 %29, i32 %30, i32 %31, %struct.TYPE_3__* %33, i32 8)
  store i32 %34, i32* %5, align 4
  br label %73

35:                                               ; preds = %4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = call i32 @hci_dev_lock(%struct.hci_dev* %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 1
  %40 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %41 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %44 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hci_bdaddr_list_del(i32* %39, i32* %42, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  store i32 %51, i32* %11, align 4
  br label %60

52:                                               ; preds = %35
  %53 = load i32, i32* @MGMT_EV_DEVICE_UNBLOCKED, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %56 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %55, i32 0, i32 0
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = call i32 @mgmt_event(i32 %53, %struct.hci_dev* %54, %struct.TYPE_3__* %56, i32 8, %struct.sock* %57)
  %59 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %52, %50
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MGMT_OP_UNBLOCK_DEVICE, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.mgmt_cp_unblock_device*, %struct.mgmt_cp_unblock_device** %10, align 8
  %68 = getelementptr inbounds %struct.mgmt_cp_unblock_device, %struct.mgmt_cp_unblock_device* %67, i32 0, i32 0
  %69 = call i32 @mgmt_cmd_complete(%struct.sock* %61, i32 %64, i32 %65, i32 %66, %struct.TYPE_3__* %68, i32 8)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = call i32 @hci_dev_unlock(%struct.hci_dev* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %60, %25
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @bdaddr_type_is_valid(i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_bdaddr_list_del(i32*, i32*, i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.TYPE_3__*, i32, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
