; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_connect_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_connect_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mgmt_ev_connect_failed = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MGMT_EV_CONNECT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_connect_failed(%struct.hci_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mgmt_ev_connect_failed, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = call i64 @mgmt_powering_down(%struct.hci_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i32 @hci_conn_count(%struct.hci_dev* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = call i32 @cancel_delayed_work(%struct.TYPE_4__* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @queue_work(i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %19, %15, %5
  %31 = getelementptr inbounds %struct.mgmt_ev_connect_failed, %struct.mgmt_ev_connect_failed* %11, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @bacpy(i32* %32, i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @link_to_bdaddr(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.mgmt_ev_connect_failed, %struct.mgmt_ev_connect_failed* %11, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @mgmt_status(i32 %40)
  %42 = getelementptr inbounds %struct.mgmt_ev_connect_failed, %struct.mgmt_ev_connect_failed* %11, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @MGMT_EV_CONNECT_FAILED, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %45 = call i32 @mgmt_event(i32 %43, %struct.hci_dev* %44, %struct.mgmt_ev_connect_failed* %11, i32 12, i32* null)
  ret void
}

declare dso_local i64 @mgmt_powering_down(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_count(%struct.hci_dev*) #1

declare dso_local i32 @cancel_delayed_work(%struct.TYPE_4__*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_connect_failed*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
