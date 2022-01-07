; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_cancel_pair_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_cancel_pair_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_addr_info = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)*, %struct.hci_conn* }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_CANCEL_PAIR_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@MGMT_OP_PAIR_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @cancel_pair_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cancel_pair_device(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_addr_info*, align 8
  %10 = alloca %struct.mgmt_pending_cmd*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_addr_info*
  store %struct.mgmt_addr_info* %14, %struct.mgmt_addr_info** %9, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @hdev_is_powered(%struct.hci_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MGMT_OP_CANCEL_PAIR_DEVICE, align 4
  %27 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %28 = call i32 @mgmt_cmd_status(%struct.sock* %22, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load i32, i32* @MGMT_OP_PAIR_DEVICE, align 4
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = call %struct.mgmt_pending_cmd* @pending_find(i32 %30, %struct.hci_dev* %31)
  store %struct.mgmt_pending_cmd* %32, %struct.mgmt_pending_cmd** %10, align 8
  %33 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %34 = icmp ne %struct.mgmt_pending_cmd* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MGMT_OP_CANCEL_PAIR_DEVICE, align 4
  %41 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %42 = call i32 @mgmt_cmd_status(%struct.sock* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %77

43:                                               ; preds = %29
  %44 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %44, i32 0, i32 1
  %46 = load %struct.hci_conn*, %struct.hci_conn** %45, align 8
  store %struct.hci_conn* %46, %struct.hci_conn** %11, align 8
  %47 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %48 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %47, i32 0, i32 0
  %49 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 0
  %51 = call i64 @bacmp(i32* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MGMT_OP_CANCEL_PAIR_DEVICE, align 4
  %59 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %60 = call i32 @mgmt_cmd_status(%struct.sock* %54, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %77

61:                                               ; preds = %43
  %62 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %63 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %62, i32 0, i32 0
  %64 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %63, align 8
  %65 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %66 = load i32, i32* @MGMT_STATUS_CANCELLED, align 4
  %67 = call i32 %64(%struct.mgmt_pending_cmd* %65, i32 %66)
  %68 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %69 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %68)
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MGMT_OP_CANCEL_PAIR_DEVICE, align 4
  %75 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %76 = call i32 @mgmt_cmd_complete(%struct.sock* %70, i32 %73, i32 %74, i32 0, %struct.mgmt_addr_info* %75, i32 4)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %61, %53, %35, %21
  %78 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %79 = call i32 @hci_dev_unlock(%struct.hci_dev* %78)
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @bacmp(i32*, i32*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_addr_info*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
