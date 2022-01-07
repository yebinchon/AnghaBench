; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_local_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.mgmt_cp_set_local_name = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_SET_LOCAL_NAME = common dso_local global i32 0, align 4
@MGMT_EV_LOCAL_NAME_CHANGED = common dso_local global i32 0, align 4
@HCI_MGMT_LOCAL_NAME_EVENTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@set_name_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_local_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_local_name(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_set_local_name*, align 8
  %10 = alloca %struct.mgmt_pending_cmd*, align 8
  %11 = alloca %struct.hci_request, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_set_local_name*
  store %struct.mgmt_cp_set_local_name* %14, %struct.mgmt_cp_set_local_name** %9, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %9, align 8
  %22 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcmp(i32 %20, i32 %23, i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %9, align 8
  %31 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcmp(i32 %29, i32 %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mgmt_cmd_complete(%struct.sock* %36, i32 %39, i32 %40, i32 0, i8* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %136

44:                                               ; preds = %26, %4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %9, align 8
  %49 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32 %47, i32 %50, i32 4)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %53 = call i32 @hdev_is_powered(%struct.hci_dev* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %44
  %56 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %9, align 8
  %60 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %58, i32 %61, i32 4)
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mgmt_cmd_complete(%struct.sock* %63, i32 %66, i32 %67, i32 0, i8* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %136

74:                                               ; preds = %55
  %75 = load i32, i32* @MGMT_EV_LOCAL_NAME_CHANGED, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @HCI_MGMT_LOCAL_NAME_EVENTS, align 4
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = call i32 @mgmt_limited_event(i32 %75, %struct.hci_dev* %76, i8* %77, i32 %78, i32 %79, %struct.sock* %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = call i32 @ext_info_changed(%struct.hci_dev* %82, %struct.sock* %83)
  br label %136

85:                                               ; preds = %44
  %86 = load %struct.sock*, %struct.sock** %5, align 8
  %87 = load i32, i32* @MGMT_OP_SET_LOCAL_NAME, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %86, i32 %87, %struct.hci_dev* %88, i8* %89, i32 %90)
  store %struct.mgmt_pending_cmd* %91, %struct.mgmt_pending_cmd** %10, align 8
  %92 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %93 = icmp ne %struct.mgmt_pending_cmd* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %136

97:                                               ; preds = %85
  %98 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mgmt_cp_set_local_name*, %struct.mgmt_cp_set_local_name** %9, align 8
  %102 = getelementptr inbounds %struct.mgmt_cp_set_local_name, %struct.mgmt_cp_set_local_name* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %100, i32 %103, i32 4)
  %105 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %106 = call i32 @hci_req_init(%struct.hci_request* %11, %struct.hci_dev* %105)
  %107 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %108 = call i64 @lmp_bredr_capable(%struct.hci_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = call i32 @__hci_req_update_name(%struct.hci_request* %11)
  %112 = call i32 @__hci_req_update_eir(%struct.hci_request* %11)
  br label %113

113:                                              ; preds = %110, %97
  %114 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %115 = call i64 @lmp_le_capable(%struct.hci_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %119 = load i32, i32* @HCI_ADVERTISING, align 4
  %120 = call i64 @hci_dev_test_flag(%struct.hci_dev* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %124 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @__hci_req_update_scan_rsp_data(%struct.hci_request* %11, i32 %125)
  br label %127

127:                                              ; preds = %122, %117, %113
  %128 = load i32, i32* @set_name_complete, align 4
  %129 = call i32 @hci_req_run(%struct.hci_request* %11, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %134 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %133)
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %94, %74, %73, %35
  %137 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %138 = call i32 @hci_dev_unlock(%struct.hci_dev* %137)
  %139 = load i32, i32* %12, align 4
  ret i32 %139
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, i8*, i32, i32, %struct.sock*) #1

declare dso_local i32 @ext_info_changed(%struct.hci_dev*, %struct.sock*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_update_name(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_eir(%struct.hci_request*) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @__hci_req_update_scan_rsp_data(%struct.hci_request*, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
