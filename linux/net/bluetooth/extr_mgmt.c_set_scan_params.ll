; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_scan_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_scan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mgmt_cp_set_scan_params = type { i32, i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_SET_SCAN_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_scan_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_scan_params(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_scan_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hci_request, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_cp_set_scan_params*
  store %struct.mgmt_cp_set_scan_params* %16, %struct.mgmt_cp_set_scan_params** %10, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = call i32 @lmp_le_capable(%struct.hci_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MGMT_OP_SET_SCAN_PARAMS, align 4
  %30 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %31 = call i32 @mgmt_cmd_status(%struct.sock* %25, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %4
  %33 = load %struct.mgmt_cp_set_scan_params*, %struct.mgmt_cp_set_scan_params** %10, align 8
  %34 = getelementptr inbounds %struct.mgmt_cp_set_scan_params, %struct.mgmt_cp_set_scan_params* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__le16_to_cpu(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 16384
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %32
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MGMT_OP_SET_SCAN_PARAMS, align 4
  %48 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %49 = call i32 @mgmt_cmd_status(%struct.sock* %43, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %116

50:                                               ; preds = %39
  %51 = load %struct.mgmt_cp_set_scan_params*, %struct.mgmt_cp_set_scan_params** %10, align 8
  %52 = getelementptr inbounds %struct.mgmt_cp_set_scan_params, %struct.mgmt_cp_set_scan_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le16_to_cpu(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 16384
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %50
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MGMT_OP_SET_SCAN_PARAMS, align 4
  %66 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %67 = call i32 @mgmt_cmd_status(%struct.sock* %61, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MGMT_OP_SET_SCAN_PARAMS, align 4
  %78 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %79 = call i32 @mgmt_cmd_status(%struct.sock* %73, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %116

80:                                               ; preds = %68
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = call i32 @hci_dev_lock(%struct.hci_dev* %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MGMT_OP_SET_SCAN_PARAMS, align 4
  %94 = call i32 @mgmt_cmd_complete(%struct.sock* %89, i32 %92, i32 %93, i32 0, i32* null, i32 0)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = load i32, i32* @HCI_LE_SCAN, align 4
  %97 = call i64 @hci_dev_test_flag(%struct.hci_dev* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %80
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DISCOVERY_STOPPED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = call i32 @hci_req_init(%struct.hci_request* %14, %struct.hci_dev* %107)
  %109 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %14)
  %110 = call i32 @hci_req_add_le_passive_scan(%struct.hci_request* %14)
  %111 = call i32 @hci_req_run(%struct.hci_request* %14, i32* null)
  br label %112

112:                                              ; preds = %106, %99, %80
  %113 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %114 = call i32 @hci_dev_unlock(%struct.hci_dev* %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %72, %60, %42, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local i32 @hci_req_add_le_passive_scan(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
