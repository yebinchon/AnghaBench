; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_amp_init1.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_amp_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCI_FLOW_CTL_MODE_BLOCK_BASED = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_COMMANDS = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_AMP_INFO = common dso_local global i32 0, align 4
@HCI_OP_READ_DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@HCI_OP_READ_FLOW_CONTROL_MODE = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCATION_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @amp_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amp_init1(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %3 = load i32, i32* @HCI_FLOW_CTL_MODE_BLOCK_BASED, align 4
  %4 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %5 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %3, i32* %7, align 4
  %8 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %9 = load i32, i32* @HCI_OP_READ_LOCAL_VERSION, align 4
  %10 = call i32 @hci_req_add(%struct.hci_request* %8, i32 %9, i32 0, i32* null)
  %11 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %12 = load i32, i32* @HCI_OP_READ_LOCAL_COMMANDS, align 4
  %13 = call i32 @hci_req_add(%struct.hci_request* %11, i32 %12, i32 0, i32* null)
  %14 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %15 = load i32, i32* @HCI_OP_READ_LOCAL_AMP_INFO, align 4
  %16 = call i32 @hci_req_add(%struct.hci_request* %14, i32 %15, i32 0, i32* null)
  %17 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %18 = load i32, i32* @HCI_OP_READ_DATA_BLOCK_SIZE, align 4
  %19 = call i32 @hci_req_add(%struct.hci_request* %17, i32 %18, i32 0, i32* null)
  %20 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %21 = load i32, i32* @HCI_OP_READ_FLOW_CONTROL_MODE, align 4
  %22 = call i32 @hci_req_add(%struct.hci_request* %20, i32 %21, i32 0, i32* null)
  %23 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %24 = load i32, i32* @HCI_OP_READ_LOCATION_DATA, align 4
  %25 = call i32 @hci_req_add(%struct.hci_request* %23, i32 %24, i32 0, i32* null)
  ret void
}

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
