; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_new_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_new_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sock = type { i32 }

@MGMT_EV_NEW_SETTINGS = common dso_local global i32 0, align 4
@HCI_MGMT_SETTING_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sock*)* @new_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_settings(%struct.hci_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = call i32 @get_current_settings(%struct.hci_dev* %6)
  %8 = call i32 @cpu_to_le32(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MGMT_EV_NEW_SETTINGS, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = load i32, i32* @HCI_MGMT_SETTING_EVENTS, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @mgmt_limited_event(i32 %9, %struct.hci_dev* %10, i32* %5, i32 4, i32 %11, %struct.sock* %12)
  ret i32 %13
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @get_current_settings(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, i32*, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
