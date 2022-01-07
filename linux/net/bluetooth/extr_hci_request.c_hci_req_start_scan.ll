; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_start_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_le_set_ext_scan_params = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64 }
%struct.hci_cp_le_set_ext_scan_enable = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64 }
%struct.hci_cp_le_scan_phy_params = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64 }
%struct.hci_cp_le_set_scan_param = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64 }
%struct.hci_cp_le_set_scan_enable = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64 }

@LE_SCAN_PHY_1M = common dso_local global i32 0, align 4
@LE_SCAN_PHY_CODED = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_EXT_SCAN_PARAMS = common dso_local global i32 0, align 4
@LE_SCAN_ENABLE = common dso_local global i8* null, align 8
@LE_SCAN_FILTER_DUP_ENABLE = common dso_local global i8* null, align 8
@HCI_OP_LE_SET_EXT_SCAN_ENABLE = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_SCAN_PARAM = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_SCAN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*, i8*, i32, i32, i8*, i8*)* @hci_req_start_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_req_start_scan(%struct.hci_request* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.hci_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.hci_dev*, align 8
  %14 = alloca %struct.hci_cp_le_set_ext_scan_params*, align 8
  %15 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 8
  %16 = alloca %struct.hci_cp_le_scan_phy_params*, align 8
  %17 = alloca [240 x i8*], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.hci_cp_le_set_scan_param, align 8
  %20 = alloca %struct.hci_cp_le_set_scan_enable, align 8
  store %struct.hci_request* %0, %struct.hci_request** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %21 = load %struct.hci_request*, %struct.hci_request** %7, align 8
  %22 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %21, i32 0, i32 0
  %23 = load %struct.hci_dev*, %struct.hci_dev** %22, align 8
  store %struct.hci_dev* %23, %struct.hci_dev** %13, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %25 = call i64 @use_ext_scan(%struct.hci_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %6
  %28 = getelementptr inbounds [240 x i8*], [240 x i8*]* %17, i64 0, i64 0
  %29 = bitcast i8** %28 to i8*
  %30 = bitcast i8* %29 to %struct.hci_cp_le_set_ext_scan_params*
  store %struct.hci_cp_le_set_ext_scan_params* %30, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %31 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %32 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.hci_cp_le_scan_phy_params*
  store %struct.hci_cp_le_scan_phy_params* %35, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %36 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %37 = bitcast %struct.hci_cp_le_set_ext_scan_params* %36 to %struct.hci_cp_le_set_scan_param*
  %38 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %37, i32 0, i32 80)
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %41 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %44 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  store i32 80, i32* %18, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %46 = call i64 @scan_1m(%struct.hci_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %27
  %49 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %50 = call i64 @scan_2m(%struct.hci_dev* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %48, %27
  %53 = load i32, i32* @LE_SCAN_PHY_1M, align 4
  %54 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %55 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %59 = bitcast %struct.hci_cp_le_scan_phy_params* %58 to %struct.hci_cp_le_set_scan_param*
  %60 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %59, i32 0, i32 80)
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %63 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %67 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %71 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 80
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %77 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %76, i32 1
  store %struct.hci_cp_le_scan_phy_params* %77, %struct.hci_cp_le_scan_phy_params** %16, align 8
  br label %78

78:                                               ; preds = %52, %48
  %79 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %80 = call i64 @scan_coded(%struct.hci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32, i32* @LE_SCAN_PHY_CODED, align 4
  %84 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %85 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, %struct.hci_cp_le_set_ext_scan_params* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %89 = bitcast %struct.hci_cp_le_scan_phy_params* %88 to %struct.hci_cp_le_set_scan_param*
  %90 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %89, i32 0, i32 80)
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %93 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %97 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %101 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 80
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load %struct.hci_cp_le_scan_phy_params*, %struct.hci_cp_le_scan_phy_params** %16, align 8
  %107 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, %struct.hci_cp_le_scan_phy_params* %106, i32 1
  store %struct.hci_cp_le_scan_phy_params* %107, %struct.hci_cp_le_scan_phy_params** %16, align 8
  br label %108

108:                                              ; preds = %82, %78
  %109 = load %struct.hci_request*, %struct.hci_request** %7, align 8
  %110 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_PARAMS, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.hci_cp_le_set_ext_scan_params*, %struct.hci_cp_le_set_ext_scan_params** %14, align 8
  %113 = bitcast %struct.hci_cp_le_set_ext_scan_params* %112 to %struct.hci_cp_le_set_scan_param*
  %114 = call i32 @hci_req_add(%struct.hci_request* %109, i32 %110, i32 %111, %struct.hci_cp_le_set_scan_param* %113)
  %115 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %15 to %struct.hci_cp_le_set_scan_param*
  %116 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %115, i32 0, i32 80)
  %117 = load i8*, i8** @LE_SCAN_ENABLE, align 8
  %118 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, %struct.hci_cp_le_set_ext_scan_enable* %15, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** @LE_SCAN_FILTER_DUP_ENABLE, align 8
  %120 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, %struct.hci_cp_le_set_ext_scan_enable* %15, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  %121 = load %struct.hci_request*, %struct.hci_request** %7, align 8
  %122 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_ENABLE, align 4
  %123 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %15 to %struct.hci_cp_le_set_scan_param*
  %124 = call i32 @hci_req_add(%struct.hci_request* %121, i32 %122, i32 80, %struct.hci_cp_le_set_scan_param* %123)
  br label %152

125:                                              ; preds = %6
  %126 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %19, i32 0, i32 80)
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, %struct.hci_cp_le_set_scan_param* %19, i32 0, i32 6
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, %struct.hci_cp_le_set_scan_param* %19, i32 0, i32 5
  store i8* %130, i8** %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i8* @cpu_to_le16(i32 %132)
  %134 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, %struct.hci_cp_le_set_scan_param* %19, i32 0, i32 4
  store i8* %133, i8** %134, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, %struct.hci_cp_le_set_scan_param* %19, i32 0, i32 3
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, %struct.hci_cp_le_set_scan_param* %19, i32 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = load %struct.hci_request*, %struct.hci_request** %7, align 8
  %140 = load i32, i32* @HCI_OP_LE_SET_SCAN_PARAM, align 4
  %141 = call i32 @hci_req_add(%struct.hci_request* %139, i32 %140, i32 80, %struct.hci_cp_le_set_scan_param* %19)
  %142 = bitcast %struct.hci_cp_le_set_scan_enable* %20 to %struct.hci_cp_le_set_scan_param*
  %143 = call i32 @memset(%struct.hci_cp_le_set_scan_param* %142, i32 0, i32 80)
  %144 = load i8*, i8** @LE_SCAN_ENABLE, align 8
  %145 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, %struct.hci_cp_le_set_scan_enable* %20, i32 0, i32 1
  store i8* %144, i8** %145, align 8
  %146 = load i8*, i8** @LE_SCAN_FILTER_DUP_ENABLE, align 8
  %147 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, %struct.hci_cp_le_set_scan_enable* %20, i32 0, i32 0
  store i8* %146, i8** %147, align 8
  %148 = load %struct.hci_request*, %struct.hci_request** %7, align 8
  %149 = load i32, i32* @HCI_OP_LE_SET_SCAN_ENABLE, align 4
  %150 = bitcast %struct.hci_cp_le_set_scan_enable* %20 to %struct.hci_cp_le_set_scan_param*
  %151 = call i32 @hci_req_add(%struct.hci_request* %148, i32 %149, i32 80, %struct.hci_cp_le_set_scan_param* %150)
  br label %152

152:                                              ; preds = %125, %108
  ret void
}

declare dso_local i64 @use_ext_scan(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_scan_param*, i32, i32) #1

declare dso_local i64 @scan_1m(%struct.hci_dev*) #1

declare dso_local i64 @scan_2m(%struct.hci_dev*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @scan_coded(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_scan_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
