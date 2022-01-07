; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_resolve_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_resolve_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hci_cp_remote_name_req = type { i32, i32, i32, i32 }

@HCI_OP_REMOTE_NAME_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.inquiry_entry*)* @hci_resolve_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_resolve_name(%struct.hci_dev* %0, %struct.inquiry_entry* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.inquiry_entry*, align 8
  %5 = alloca %struct.hci_cp_remote_name_req, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.inquiry_entry* %1, %struct.inquiry_entry** %4, align 8
  %6 = call i32 @memset(%struct.hci_cp_remote_name_req* %5, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %5, i32 0, i32 3
  %8 = load %struct.inquiry_entry*, %struct.inquiry_entry** %4, align 8
  %9 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = call i32 @bacpy(i32* %7, i32* %10)
  %12 = load %struct.inquiry_entry*, %struct.inquiry_entry** %4, align 8
  %13 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.inquiry_entry*, %struct.inquiry_entry** %4, align 8
  %18 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inquiry_entry*, %struct.inquiry_entry** %4, align 8
  %23 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.hci_cp_remote_name_req, %struct.hci_cp_remote_name_req* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load i32, i32* @HCI_OP_REMOTE_NAME_REQ, align 4
  %29 = call i32 @hci_send_cmd(%struct.hci_dev* %27, i32 %28, i32 16, %struct.hci_cp_remote_name_req* %5)
  ret i32 %29
}

declare dso_local i32 @memset(%struct.hci_cp_remote_name_req*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_remote_name_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
