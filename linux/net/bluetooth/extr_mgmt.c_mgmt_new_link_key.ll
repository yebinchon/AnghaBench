; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_link_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.link_key = type { i32, i32, i32, i32 }
%struct.mgmt_ev_new_link_key = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BDADDR_BREDR = common dso_local global i32 0, align 4
@HCI_LINK_KEY_SIZE = common dso_local global i32 0, align 4
@MGMT_EV_NEW_LINK_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_new_link_key(%struct.hci_dev* %0, %struct.link_key* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.link_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_ev_new_link_key, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.link_key* %1, %struct.link_key** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.mgmt_ev_new_link_key* %7, i32 0, i32 24)
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.link_key*, %struct.link_key** %5, align 8
  %15 = getelementptr inbounds %struct.link_key, %struct.link_key* %14, i32 0, i32 3
  %16 = call i32 @bacpy(i32* %13, i32* %15)
  %17 = load i32, i32* @BDADDR_BREDR, align 4
  %18 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.link_key*, %struct.link_key** %5, align 8
  %22 = getelementptr inbounds %struct.link_key, %struct.link_key* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.link_key*, %struct.link_key** %5, align 8
  %30 = getelementptr inbounds %struct.link_key, %struct.link_key* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HCI_LINK_KEY_SIZE, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.link_key*, %struct.link_key** %5, align 8
  %35 = getelementptr inbounds %struct.link_key, %struct.link_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.mgmt_ev_new_link_key, %struct.mgmt_ev_new_link_key* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @MGMT_EV_NEW_LINK_KEY, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = call i32 @mgmt_event(i32 %39, %struct.hci_dev* %40, %struct.mgmt_ev_new_link_key* %7, i32 24, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.mgmt_ev_new_link_key*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_new_link_key*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
