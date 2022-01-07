; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.mgmt_cp_set_device_id = type { i32, i32, i32, i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_SET_DEVICE_ID = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_device_id(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_device_id*, align 8
  %11 = alloca %struct.hci_request, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_cp_set_device_id*
  store %struct.mgmt_cp_set_device_id* %15, %struct.mgmt_cp_set_device_id** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.mgmt_cp_set_device_id*, %struct.mgmt_cp_set_device_id** %10, align 8
  %21 = getelementptr inbounds %struct.mgmt_cp_set_device_id, %struct.mgmt_cp_set_device_id* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @__le16_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MGMT_OP_SET_DEVICE_ID, align 4
  %33 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %34 = call i32 @mgmt_cmd_status(%struct.sock* %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %72

35:                                               ; preds = %4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = call i32 @hci_dev_lock(%struct.hci_dev* %36)
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mgmt_cp_set_device_id*, %struct.mgmt_cp_set_device_id** %10, align 8
  %42 = getelementptr inbounds %struct.mgmt_cp_set_device_id, %struct.mgmt_cp_set_device_id* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @__le16_to_cpu(i32 %43)
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mgmt_cp_set_device_id*, %struct.mgmt_cp_set_device_id** %10, align 8
  %48 = getelementptr inbounds %struct.mgmt_cp_set_device_id, %struct.mgmt_cp_set_device_id* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @__le16_to_cpu(i32 %49)
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mgmt_cp_set_device_id*, %struct.mgmt_cp_set_device_id** %10, align 8
  %54 = getelementptr inbounds %struct.mgmt_cp_set_device_id, %struct.mgmt_cp_set_device_id* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @__le16_to_cpu(i32 %55)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MGMT_OP_SET_DEVICE_ID, align 4
  %64 = call i32 @mgmt_cmd_complete(%struct.sock* %59, i32 %62, i32 %63, i32 0, i32* null, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = call i32 @hci_req_init(%struct.hci_request* %11, %struct.hci_dev* %65)
  %67 = call i32 @__hci_req_update_eir(%struct.hci_request* %11)
  %68 = call i32 @hci_req_run(%struct.hci_request* %11, i32* null)
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = call i32 @hci_dev_unlock(%struct.hci_dev* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %35, %27
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_update_eir(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
