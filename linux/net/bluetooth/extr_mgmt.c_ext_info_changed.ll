; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_ext_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_ext_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sock = type { i32 }
%struct.mgmt_ev_ext_info_changed = type { i32, i32 }

@MGMT_EV_EXT_INFO_CHANGED = common dso_local global i32 0, align 4
@HCI_MGMT_EXT_INFO_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sock*)* @ext_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_info_changed(%struct.hci_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.mgmt_ev_ext_info_changed*, align 8
  %7 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %9 = bitcast i8* %8 to %struct.mgmt_ev_ext_info_changed*
  store %struct.mgmt_ev_ext_info_changed* %9, %struct.mgmt_ev_ext_info_changed** %6, align 8
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 512)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = load %struct.mgmt_ev_ext_info_changed*, %struct.mgmt_ev_ext_info_changed** %6, align 8
  %14 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, %struct.mgmt_ev_ext_info_changed* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @append_eir_data_to_buf(%struct.hci_dev* %12, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @cpu_to_le16(i64 %17)
  %19 = load %struct.mgmt_ev_ext_info_changed*, %struct.mgmt_ev_ext_info_changed** %6, align 8
  %20 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, %struct.mgmt_ev_ext_info_changed* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MGMT_EV_EXT_INFO_CHANGED, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.mgmt_ev_ext_info_changed*, %struct.mgmt_ev_ext_info_changed** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 8, %24
  %26 = load i32, i32* @HCI_MGMT_EXT_INFO_EVENTS, align 4
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @mgmt_limited_event(i32 %21, %struct.hci_dev* %22, %struct.mgmt_ev_ext_info_changed* %23, i64 %25, i32 %26, %struct.sock* %27)
  ret i32 %28
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @append_eir_data_to_buf(%struct.hci_dev*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, %struct.mgmt_ev_ext_info_changed*, i64, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
