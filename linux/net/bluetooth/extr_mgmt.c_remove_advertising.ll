; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_remove_advertising = type { i64 }
%struct.mgmt_rp_remove_advertising = type { i64 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_REMOVE_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_OP_ADD_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_OP_SET_LE = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@remove_advertising_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @remove_advertising to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_advertising(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_remove_advertising*, align 8
  %10 = alloca %struct.mgmt_rp_remove_advertising, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_cp_remove_advertising*
  store %struct.mgmt_cp_remove_advertising* %15, %struct.mgmt_cp_remove_advertising** %9, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %9, align 8
  %23 = getelementptr inbounds %struct.mgmt_cp_remove_advertising, %struct.mgmt_cp_remove_advertising* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %9, align 8
  %29 = getelementptr inbounds %struct.mgmt_cp_remove_advertising, %struct.mgmt_cp_remove_advertising* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hci_find_adv_instance(%struct.hci_dev* %27, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %39 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %40 = call i32 @mgmt_cmd_status(%struct.sock* %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  br label %139

41:                                               ; preds = %26, %4
  %42 = load i32, i32* @MGMT_OP_ADD_ADVERTISING, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = call i64 @pending_find(i32 %42, %struct.hci_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %49 = call i64 @pending_find(i32 %47, %struct.hci_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %54 = call i64 @pending_find(i32 %52, %struct.hci_dev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %46, %41
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %62 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %63 = call i32 @mgmt_cmd_status(%struct.sock* %57, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %139

64:                                               ; preds = %51
  %65 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 1
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %75 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %76 = call i32 @mgmt_cmd_status(%struct.sock* %70, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %139

77:                                               ; preds = %64
  %78 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %79 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %78)
  %80 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %9, align 8
  %83 = getelementptr inbounds %struct.mgmt_cp_remove_advertising, %struct.mgmt_cp_remove_advertising* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @hci_req_clear_adv_instance(%struct.hci_dev* %80, %struct.sock* %81, %struct.hci_request* %12, i64 %84, i32 1)
  %86 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 1
  %88 = call i64 @list_empty(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = call i32 @__hci_req_disable_advertising(%struct.hci_request* %12)
  br label %92

92:                                               ; preds = %90, %77
  %93 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %12, i32 0, i32 0
  %94 = call i64 @skb_queue_empty(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %98 = call i32 @hdev_is_powered(%struct.hci_dev* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %102 = load i32, i32* @HCI_ADVERTISING, align 4
  %103 = call i64 @hci_dev_test_flag(%struct.hci_dev* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100, %96, %92
  %106 = call i32 @hci_req_purge(%struct.hci_request* %12)
  %107 = load %struct.mgmt_cp_remove_advertising*, %struct.mgmt_cp_remove_advertising** %9, align 8
  %108 = getelementptr inbounds %struct.mgmt_cp_remove_advertising, %struct.mgmt_cp_remove_advertising* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.mgmt_rp_remove_advertising, %struct.mgmt_rp_remove_advertising* %10, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %116 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %117 = call i32 @mgmt_cmd_complete(%struct.sock* %111, i32 %114, i32 %115, i32 %116, %struct.mgmt_rp_remove_advertising* %10, i32 8)
  store i32 %117, i32* %13, align 4
  br label %139

118:                                              ; preds = %100
  %119 = load %struct.sock*, %struct.sock** %5, align 8
  %120 = load i32, i32* @MGMT_OP_REMOVE_ADVERTISING, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %119, i32 %120, %struct.hci_dev* %121, i8* %122, i32 %123)
  store %struct.mgmt_pending_cmd* %124, %struct.mgmt_pending_cmd** %11, align 8
  %125 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %126 = icmp ne %struct.mgmt_pending_cmd* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %139

130:                                              ; preds = %118
  %131 = load i32, i32* @remove_advertising_complete, align 4
  %132 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %137 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %136)
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %127, %105, %69, %56, %33
  %140 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %141 = call i32 @hci_dev_unlock(%struct.hci_dev* %140)
  %142 = load i32, i32* %13, align 4
  ret i32 %142
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_find_adv_instance(%struct.hci_dev*, i64) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_clear_adv_instance(%struct.hci_dev*, %struct.sock*, %struct.hci_request*, i64, i32) #1

declare dso_local i32 @__hci_req_disable_advertising(%struct.hci_request*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_purge(%struct.hci_request*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_remove_advertising*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
