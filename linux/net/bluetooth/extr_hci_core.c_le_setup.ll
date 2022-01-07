; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_le_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_le_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@HCI_OP_LE_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@HCI_OP_LE_READ_LOCAL_FEATURES = common dso_local global i32 0, align 4
@HCI_OP_LE_READ_SUPPORTED_STATES = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @le_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_setup(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %4 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %5 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %4, i32 0, i32 0
  %6 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  store %struct.hci_dev* %6, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %8 = load i32, i32* @HCI_OP_LE_READ_BUFFER_SIZE, align 4
  %9 = call i32 @hci_req_add(%struct.hci_request* %7, i32 %8, i32 0, i32* null)
  %10 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %11 = load i32, i32* @HCI_OP_LE_READ_LOCAL_FEATURES, align 4
  %12 = call i32 @hci_req_add(%struct.hci_request* %10, i32 %11, i32 0, i32* null)
  %13 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %14 = load i32, i32* @HCI_OP_LE_READ_SUPPORTED_STATES, align 4
  %15 = call i32 @hci_req_add(%struct.hci_request* %13, i32 %14, i32 0, i32* null)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = call i32 @lmp_bredr_capable(%struct.hci_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load i32, i32* @HCI_LE_ENABLED, align 4
  %22 = call i32 @hci_dev_set_flag(%struct.hci_dev* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
