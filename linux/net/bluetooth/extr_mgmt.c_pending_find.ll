; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pending_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pending_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_dev = type { i32 }

@HCI_CHANNEL_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mgmt_pending_cmd* (i32, %struct.hci_dev*)* @pending_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mgmt_pending_cmd* @pending_find(i32 %0, %struct.hci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hci_dev* %1, %struct.hci_dev** %4, align 8
  %5 = load i32, i32* @HCI_CHANNEL_CONTROL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = call %struct.mgmt_pending_cmd* @mgmt_pending_find(i32 %5, i32 %6, %struct.hci_dev* %7)
  ret %struct.mgmt_pending_cmd* %8
}

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_find(i32, i32, %struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
