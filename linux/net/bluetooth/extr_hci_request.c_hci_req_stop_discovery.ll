; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_stop_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_stop_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, %struct.discovery_state, i32 }
%struct.discovery_state = type { i64, i64 }
%struct.hci_cp_remote_name_req_cancel = type { i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s state %u\00", align 1
@DISCOVERY_FINDING = common dso_local global i64 0, align 8
@DISCOVERY_STOPPING = common dso_local global i64 0, align 8
@HCI_INQUIRY = common dso_local global i32 0, align 4
@HCI_OP_INQUIRY_CANCEL = common dso_local global i32 0, align 4
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@DISCOV_TYPE_LE = common dso_local global i64 0, align 8
@DISCOVERY_RESOLVING = common dso_local global i64 0, align 8
@BDADDR_ANY = common dso_local global i32 0, align 4
@NAME_PENDING = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_NAME_REQ_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_req_stop_discovery(%struct.hci_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.discovery_state*, align 8
  %6 = alloca %struct.hci_cp_remote_name_req_cancel, align 4
  %7 = alloca %struct.inquiry_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  %9 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %10 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %9, i32 0, i32 0
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 2
  store %struct.discovery_state* %13, %struct.discovery_state** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %20)
  %22 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %23 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DISCOVERY_FINDING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %29 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DISCOVERY_STOPPING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27, %1
  %34 = load i32, i32* @HCI_INQUIRY, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %41 = load i32, i32* @HCI_OP_INQUIRY_CANCEL, align 4
  %42 = call i32 @hci_req_add(%struct.hci_request* %40, i32 %41, i32 0, %struct.hci_cp_remote_name_req_cancel* null)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = load i32, i32* @HCI_LE_SCAN, align 4
  %46 = call i64 @hci_dev_test_flag(%struct.hci_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = call i32 @cancel_delayed_work(i32* %50)
  %52 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %53 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %52)
  br label %54

54:                                               ; preds = %48, %43
  store i32 1, i32* %8, align 4
  br label %64

55:                                               ; preds = %27
  %56 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %57 = load i32, i32* @HCI_LE_SCAN, align 4
  %58 = call i64 @hci_dev_test_flag(%struct.hci_dev* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %62 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %61)
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %66 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DISCOV_TYPE_LE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %104

72:                                               ; preds = %64
  %73 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %74 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DISCOVERY_RESOLVING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.discovery_state*, %struct.discovery_state** %5, align 8
  %80 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DISCOVERY_STOPPING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78, %72
  %85 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %86 = load i32, i32* @BDADDR_ANY, align 4
  %87 = load i32, i32* @NAME_PENDING, align 4
  %88 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev* %85, i32 %86, i32 %87)
  store %struct.inquiry_entry* %88, %struct.inquiry_entry** %7, align 8
  %89 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %90 = icmp ne %struct.inquiry_entry* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %104

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.hci_cp_remote_name_req_cancel, %struct.hci_cp_remote_name_req_cancel* %6, i32 0, i32 0
  %95 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %96 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @bacpy(i32* %94, i32* %97)
  %99 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %100 = load i32, i32* @HCI_OP_REMOTE_NAME_REQ_CANCEL, align 4
  %101 = call i32 @hci_req_add(%struct.hci_request* %99, i32 %100, i32 4, %struct.hci_cp_remote_name_req_cancel* %6)
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %78
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %91, %70
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_remote_name_req_cancel*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
