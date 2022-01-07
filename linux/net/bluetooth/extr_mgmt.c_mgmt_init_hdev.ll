; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_init_hdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_init_hdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }

@HCI_MGMT = common dso_local global i32 0, align 4
@service_cache_off = common dso_local global i32 0, align 4
@rpa_expired = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.hci_dev*)* @mgmt_init_hdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_init_hdev(%struct.sock* %0, %struct.hci_dev* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %4, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %6 = load i32, i32* @HCI_MGMT, align 4
  %7 = call i64 @hci_dev_test_and_set_flag(%struct.hci_dev* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* @service_cache_off, align 4
  %14 = call i32 @INIT_DELAYED_WORK(i32* %12, i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @rpa_expired, align 4
  %18 = call i32 @INIT_DELAYED_WORK(i32* %16, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = load i32, i32* @HCI_BONDABLE, align 4
  %21 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %19, i32 %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
