; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_clear_pending_adv_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_clear_pending_adv_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state }
%struct.discovery_state = type { i64, i32 }

@BDADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @clear_pending_adv_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_pending_adv_report(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.discovery_state*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 0
  store %struct.discovery_state* %5, %struct.discovery_state** %3, align 8
  %6 = load %struct.discovery_state*, %struct.discovery_state** %3, align 8
  %7 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %6, i32 0, i32 1
  %8 = load i32, i32* @BDADDR_ANY, align 4
  %9 = call i32 @bacpy(i32* %7, i32 %8)
  %10 = load %struct.discovery_state*, %struct.discovery_state** %3, align 8
  %11 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

declare dso_local i32 @bacpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
