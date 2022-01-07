; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.cmd_lookup = type { i64, %struct.hci_dev*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"err %d\00", align 1
@MGMT_OP_SET_POWERED = common dso_local global i32 0, align 4
@settings_rsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_power_on(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_lookup, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 1
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %7, align 8
  %9 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = call i32 @hci_dev_lock(%struct.hci_dev* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call i32 @restart_le_actions(%struct.hci_dev* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_update_background_scan(%struct.hci_dev* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load i32, i32* @settings_rsp, align 4
  %25 = call i32 @mgmt_pending_foreach(i32 %22, %struct.hci_dev* %23, i32 %24, %struct.cmd_lookup* %5)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @new_settings(%struct.hci_dev* %26, i64 %28)
  %30 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @sock_put(i64 %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = call i32 @hci_dev_unlock(%struct.hci_dev* %38)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @restart_le_actions(%struct.hci_dev*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_pending_foreach(i32, %struct.hci_dev*, i32, %struct.cmd_lookup*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, i64) #1

declare dso_local i32 @sock_put(i64) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
