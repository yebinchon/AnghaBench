; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_disconnect_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_disconnect_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_cp_disconnect = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)*, %struct.mgmt_cp_disconnect* }

@MGMT_OP_UNPAIR_DEVICE = common dso_local global i32 0, align 4
@unpair_device_rsp = common dso_local global i32 0, align 4
@MGMT_OP_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_disconnect_failed(%struct.hci_dev* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mgmt_cp_disconnect*, align 8
  %13 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @link_to_bdaddr(i64 %14, i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @MGMT_OP_UNPAIR_DEVICE, align 4
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = load i32, i32* @unpair_device_rsp, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @mgmt_pending_foreach(i32 %17, %struct.hci_dev* %18, i32 %19, %struct.hci_dev* %20)
  %22 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %24 = call %struct.mgmt_pending_cmd* @pending_find(i32 %22, %struct.hci_dev* %23)
  store %struct.mgmt_pending_cmd* %24, %struct.mgmt_pending_cmd** %13, align 8
  %25 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %26 = icmp ne %struct.mgmt_pending_cmd* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %57

28:                                               ; preds = %5
  %29 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %30 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %29, i32 0, i32 1
  %31 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %30, align 8
  store %struct.mgmt_cp_disconnect* %31, %struct.mgmt_cp_disconnect** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %12, align 8
  %34 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i64 @bacmp(i32* %32, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %57

39:                                               ; preds = %28
  %40 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %12, align 8
  %41 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %57

47:                                               ; preds = %39
  %48 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %49 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %48, i32 0, i32 0
  %50 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %49, align 8
  %51 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @mgmt_status(i64 %52)
  %54 = call i32 %50(%struct.mgmt_pending_cmd* %51, i32 %53)
  %55 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %56 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %55)
  br label %57

57:                                               ; preds = %47, %46, %38, %27
  ret void
}

declare dso_local i64 @link_to_bdaddr(i64, i64) #1

declare dso_local i32 @mgmt_pending_foreach(i32, %struct.hci_dev*, i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @bacmp(i32*, i32*) #1

declare dso_local i32 @mgmt_status(i64) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
