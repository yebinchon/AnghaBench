; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_class_of_dev_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_class_of_dev_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.cmd_lookup = type { i64, i32, %struct.hci_dev*, i32* }

@MGMT_OP_SET_DEV_CLASS = common dso_local global i32 0, align 4
@sk_lookup = common dso_local global i32 0, align 4
@MGMT_OP_ADD_UUID = common dso_local global i32 0, align 4
@MGMT_OP_REMOVE_UUID = common dso_local global i32 0, align 4
@MGMT_EV_CLASS_OF_DEV_CHANGED = common dso_local global i32 0, align 4
@HCI_MGMT_DEV_CLASS_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_set_class_of_dev_complete(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_lookup, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 1
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = ptrtoint %struct.hci_dev* %10 to i32
  store i32 %11, i32* %9, align 8
  %12 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 2
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mgmt_status(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.hci_dev*
  store %struct.hci_dev* %16, %struct.hci_dev** %12, align 8
  %17 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = load i32, i32* @sk_lookup, align 4
  %21 = call i32 @mgmt_pending_foreach(i32 %18, %struct.hci_dev* %19, i32 %20, %struct.cmd_lookup* %7)
  %22 = load i32, i32* @MGMT_OP_ADD_UUID, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = load i32, i32* @sk_lookup, align 4
  %25 = call i32 @mgmt_pending_foreach(i32 %22, %struct.hci_dev* %23, i32 %24, %struct.cmd_lookup* %7)
  %26 = load i32, i32* @MGMT_OP_REMOVE_UUID, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = load i32, i32* @sk_lookup, align 4
  %29 = call i32 @mgmt_pending_foreach(i32 %26, %struct.hci_dev* %27, i32 %28, %struct.cmd_lookup* %7)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @MGMT_EV_CLASS_OF_DEV_CHANGED, align 4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @HCI_MGMT_DEV_CLASS_EVENTS, align 4
  %37 = call i32 @mgmt_limited_event(i32 %33, %struct.hci_dev* %34, i32* %35, i32 3, i32 %36, i32* null)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = call i32 @ext_info_changed(%struct.hci_dev* %38, i32* null)
  br label %40

40:                                               ; preds = %32, %3
  %41 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sock_put(i64 %46)
  br label %48

48:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_foreach(i32, %struct.hci_dev*, i32, %struct.cmd_lookup*) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ext_info_changed(%struct.hci_dev*, i32*) #1

declare dso_local i32 @sock_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
