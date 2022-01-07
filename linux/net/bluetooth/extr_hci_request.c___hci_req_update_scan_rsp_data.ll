; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_scan_rsp_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_scan_rsp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i8*, i32 }
%struct.hci_cp_le_set_ext_scan_rsp_data = type { i8*, i32, i32, i32, i64 }
%struct.hci_cp_le_set_scan_rsp_data = type { i8*, i32, i32, i32, i64 }

@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@LE_SET_ADV_DATA_OP_COMPLETE = common dso_local global i32 0, align 4
@LE_SET_ADV_DATA_NO_FRAG = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_EXT_SCAN_RSP_DATA = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_SCAN_RSP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_scan_rsp_data(%struct.hci_request* %0, i8* %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_cp_le_set_ext_scan_rsp_data, align 8
  %8 = alloca %struct.hci_cp_le_set_scan_rsp_data, align 8
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %10 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %9, i32 0, i32 0
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = load i32, i32* @HCI_LE_ENABLED, align 4
  %14 = call i32 @hci_dev_test_flag(%struct.hci_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = call i64 @ext_adv_capable(%struct.hci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = bitcast %struct.hci_cp_le_set_ext_scan_rsp_data* %7 to %struct.hci_cp_le_set_scan_rsp_data*
  %23 = call i32 @memset(%struct.hci_cp_le_set_scan_rsp_data* %22, i32 0, i32 32)
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @create_instance_scan_rsp_data(%struct.hci_dev* %27, i8* %28, i32 %30)
  store i8* %31, i8** %6, align 8
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @create_default_scan_rsp_data(%struct.hci_dev* %33, i32 %35)
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @memcmp(i32 %45, i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %120

53:                                               ; preds = %43, %37
  %54 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memcpy(i32 %56, i32 %58, i32 4)
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @LE_SET_ADV_DATA_OP_COMPLETE, align 4
  %67 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @LE_SET_ADV_DATA_NO_FRAG, align 4
  %69 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, %struct.hci_cp_le_set_ext_scan_rsp_data* %7, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %71 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_RSP_DATA, align 4
  %72 = bitcast %struct.hci_cp_le_set_ext_scan_rsp_data* %7 to %struct.hci_cp_le_set_scan_rsp_data*
  %73 = call i32 @hci_req_add(%struct.hci_request* %70, i32 %71, i32 32, %struct.hci_cp_le_set_scan_rsp_data* %72)
  br label %120

74:                                               ; preds = %17
  %75 = call i32 @memset(%struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 32)
  %76 = load i8*, i8** %4, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, %struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @create_instance_scan_rsp_data(%struct.hci_dev* %79, i8* %80, i32 %82)
  store i8* %83, i8** %6, align 8
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %86 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, %struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @create_default_scan_rsp_data(%struct.hci_dev* %85, i32 %87)
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, %struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @memcmp(i32 %97, i32 %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %120

105:                                              ; preds = %95, %89
  %106 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, %struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %108, i32 %110, i32 4)
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, %struct.hci_cp_le_set_scan_rsp_data* %8, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %118 = load i32, i32* @HCI_OP_LE_SET_SCAN_RSP_DATA, align 4
  %119 = call i32 @hci_req_add(%struct.hci_request* %117, i32 %118, i32 32, %struct.hci_cp_le_set_scan_rsp_data* %8)
  br label %120

120:                                              ; preds = %16, %52, %104, %105, %53
  ret void
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_scan_rsp_data*, i32, i32) #1

declare dso_local i8* @create_instance_scan_rsp_data(%struct.hci_dev*, i8*, i32) #1

declare dso_local i8* @create_default_scan_rsp_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_scan_rsp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
