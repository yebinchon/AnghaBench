; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_auth_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_auth_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32 }
%struct.mgmt_ev_auth_failed = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)*, i32* }

@MGMT_EV_AUTH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_auth_failed(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_ev_auth_failed, align 4
  %6 = alloca %struct.mgmt_pending_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mgmt_status(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.mgmt_ev_auth_failed, %struct.mgmt_ev_auth_failed* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 3
  %14 = call i32 @bacpy(i32* %11, i32* %13)
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @link_to_bdaddr(i32 %17, i32 %20)
  %22 = getelementptr inbounds %struct.mgmt_ev_auth_failed, %struct.mgmt_ev_auth_failed* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.mgmt_ev_auth_failed, %struct.mgmt_ev_auth_failed* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %27 = call %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn* %26)
  store %struct.mgmt_pending_cmd* %27, %struct.mgmt_pending_cmd** %6, align 8
  %28 = load i32, i32* @MGMT_EV_AUTH_FAILED, align 4
  %29 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %33 = icmp ne %struct.mgmt_pending_cmd* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32* [ %37, %34 ], [ null, %38 ]
  %41 = call i32 @mgmt_event(i32 %28, i32 %31, %struct.mgmt_ev_auth_failed* %5, i32 12, i32* %40)
  %42 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %43 = icmp ne %struct.mgmt_pending_cmd* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %45, i32 0, i32 0
  %47 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %46, align 8
  %48 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %47(%struct.mgmt_pending_cmd* %48, i32 %49)
  %51 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  %52 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %51)
  br label %53

53:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn*) #1

declare dso_local i32 @mgmt_event(i32, i32, %struct.mgmt_ev_auth_failed*, i32, i32*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
