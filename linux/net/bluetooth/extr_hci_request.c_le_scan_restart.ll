; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_le_scan_restart.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_le_scan_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_le_set_ext_scan_enable = type { i8*, i8* }
%struct.hci_cp_le_set_scan_enable = type { i8*, i8* }

@HCI_LE_SCAN = common dso_local global i32 0, align 4
@LE_SCAN_ENABLE = common dso_local global i8* null, align 8
@LE_SCAN_FILTER_DUP_ENABLE = common dso_local global i8* null, align 8
@HCI_OP_LE_SET_EXT_SCAN_ENABLE = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_SCAN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @le_scan_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_scan_restart(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 8
  %8 = alloca %struct.hci_cp_le_set_scan_enable, align 8
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %10 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %9, i32 0, i32 0
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %6, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = load i32, i32* @HCI_LE_SCAN, align 4
  %14 = call i32 @hci_dev_test_flag(%struct.hci_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %19 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i64 @use_ext_scan(%struct.hci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %7 to %struct.hci_cp_le_set_scan_enable*
  %25 = call i32 @memset(%struct.hci_cp_le_set_scan_enable* %24, i32 0, i32 16)
  %26 = load i8*, i8** @LE_SCAN_ENABLE, align 8
  %27 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, %struct.hci_cp_le_set_ext_scan_enable* %7, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @LE_SCAN_FILTER_DUP_ENABLE, align 8
  %29 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, %struct.hci_cp_le_set_ext_scan_enable* %7, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %31 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_ENABLE, align 4
  %32 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %7 to %struct.hci_cp_le_set_scan_enable*
  %33 = call i32 @hci_req_add(%struct.hci_request* %30, i32 %31, i32 16, %struct.hci_cp_le_set_scan_enable* %32)
  br label %43

34:                                               ; preds = %17
  %35 = call i32 @memset(%struct.hci_cp_le_set_scan_enable* %8, i32 0, i32 16)
  %36 = load i8*, i8** @LE_SCAN_ENABLE, align 8
  %37 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, %struct.hci_cp_le_set_scan_enable* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @LE_SCAN_FILTER_DUP_ENABLE, align 8
  %39 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, %struct.hci_cp_le_set_scan_enable* %8, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %41 = load i32, i32* @HCI_OP_LE_SET_SCAN_ENABLE, align 4
  %42 = call i32 @hci_req_add(%struct.hci_request* %40, i32 %41, i32 16, %struct.hci_cp_le_set_scan_enable* %8)
  br label %43

43:                                               ; preds = %34, %23
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local i64 @use_ext_scan(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_scan_enable*, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_scan_enable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
