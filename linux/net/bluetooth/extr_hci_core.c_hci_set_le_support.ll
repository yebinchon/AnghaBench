; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_set_le_support.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_set_le_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_write_le_host_supported = type { i32, i32 }

@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_OP_WRITE_LE_HOST_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @hci_set_le_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_set_le_support(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_write_le_host_supported, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call i32 @lmp_bredr_capable(%struct.hci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %31

12:                                               ; preds = %1
  %13 = call i32 @memset(%struct.hci_cp_write_le_host_supported* %4, i32 0, i32 8)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load i32, i32* @HCI_LE_ENABLED, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %4, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %4, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call i32 @lmp_host_le_capable(%struct.hci_dev* %24)
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %29 = load i32, i32* @HCI_OP_WRITE_LE_HOST_SUPPORTED, align 4
  %30 = call i32 @hci_req_add(%struct.hci_request* %28, i32 %29, i32 8, %struct.hci_cp_write_le_host_supported* %4)
  br label %31

31:                                               ; preds = %11, %27, %21
  ret void
}

declare dso_local i32 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_write_le_host_supported*, i32, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @lmp_host_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_le_host_supported*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
