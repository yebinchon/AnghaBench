; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_status_pend.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_status_pend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }

@HCI_REQ_PEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_req_status_pend(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HCI_REQ_PEND, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
