; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_le_scan_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_le_scan_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_le_set_ext_scan_enable = type { i8* }
%struct.hci_cp_le_set_scan_enable = type { i8* }

@LE_SCAN_DISABLE = common dso_local global i8* null, align 8
@HCI_OP_LE_SET_EXT_SCAN_ENABLE = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_SCAN_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_req_add_le_scan_disable(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 8
  %5 = alloca %struct.hci_cp_le_set_scan_enable, align 8
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call i64 @use_ext_scan(%struct.hci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %4 to %struct.hci_cp_le_set_scan_enable*
  %14 = call i32 @memset(%struct.hci_cp_le_set_scan_enable* %13, i32 0, i32 8)
  %15 = load i8*, i8** @LE_SCAN_DISABLE, align 8
  %16 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, %struct.hci_cp_le_set_ext_scan_enable* %4, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %18 = load i32, i32* @HCI_OP_LE_SET_EXT_SCAN_ENABLE, align 4
  %19 = bitcast %struct.hci_cp_le_set_ext_scan_enable* %4 to %struct.hci_cp_le_set_scan_enable*
  %20 = call i32 @hci_req_add(%struct.hci_request* %17, i32 %18, i32 8, %struct.hci_cp_le_set_scan_enable* %19)
  br label %28

21:                                               ; preds = %1
  %22 = call i32 @memset(%struct.hci_cp_le_set_scan_enable* %5, i32 0, i32 8)
  %23 = load i8*, i8** @LE_SCAN_DISABLE, align 8
  %24 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, %struct.hci_cp_le_set_scan_enable* %5, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %26 = load i32, i32* @HCI_OP_LE_SET_SCAN_ENABLE, align 4
  %27 = call i32 @hci_req_add(%struct.hci_request* %25, i32 %26, i32 8, %struct.hci_cp_le_set_scan_enable* %5)
  br label %28

28:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @use_ext_scan(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_scan_enable*, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_scan_enable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
