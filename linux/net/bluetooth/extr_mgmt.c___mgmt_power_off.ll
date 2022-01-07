; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c___mgmt_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c___mgmt_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_lookup = type { i64, %struct.hci_dev*, i32* }
%struct.hci_dev = type { i32 }

@MGMT_OP_SET_POWERED = common dso_local global i32 0, align 4
@settings_rsp = common dso_local global i32 0, align 4
@HCI_UNREGISTER = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_INDEX = common dso_local global %struct.cmd_lookup zeroinitializer, align 8
@MGMT_STATUS_NOT_POWERED = common dso_local global %struct.cmd_lookup zeroinitializer, align 8
@cmd_complete_rsp = common dso_local global i32 0, align 4
@MGMT_EV_CLASS_OF_DEV_CHANGED = common dso_local global i32 0, align 4
@HCI_MGMT_DEV_CLASS_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mgmt_power_off(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.cmd_lookup, align 8
  %4 = alloca %struct.cmd_lookup, align 8
  %5 = alloca [1 x %struct.cmd_lookup], align 16
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 1
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %7, align 8
  %9 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = bitcast [1 x %struct.cmd_lookup]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 24, i1 false)
  %11 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = load i32, i32* @settings_rsp, align 4
  %14 = call i32 @mgmt_pending_foreach(i32 %11, %struct.hci_dev* %12, i32 %13, %struct.cmd_lookup* %3)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = load i32, i32* @HCI_UNREGISTER, align 4
  %17 = call i64 @hci_dev_test_flag(%struct.hci_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = bitcast %struct.cmd_lookup* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.cmd_lookup* @MGMT_STATUS_INVALID_INDEX to i8*), i64 24, i1 false)
  br label %23

21:                                               ; preds = %1
  %22 = bitcast %struct.cmd_lookup* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.cmd_lookup* @MGMT_STATUS_NOT_POWERED to i8*), i64 24, i1 false)
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = load i32, i32* @cmd_complete_rsp, align 4
  %26 = call i32 @mgmt_pending_foreach(i32 0, %struct.hci_dev* %24, i32 %25, %struct.cmd_lookup* %4)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [1 x %struct.cmd_lookup], [1 x %struct.cmd_lookup]* %5, i64 0, i64 0
  %31 = call i64 @memcmp(i32 %29, %struct.cmd_lookup* %30, i32 24)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i32, i32* @MGMT_EV_CLASS_OF_DEV_CHANGED, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = getelementptr inbounds [1 x %struct.cmd_lookup], [1 x %struct.cmd_lookup]* %5, i64 0, i64 0
  %37 = load i32, i32* @HCI_MGMT_DEV_CLASS_EVENTS, align 4
  %38 = call i32 @mgmt_limited_event(i32 %34, %struct.hci_dev* %35, %struct.cmd_lookup* %36, i32 24, i32 %37, i32* null)
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = call i32 @ext_info_changed(%struct.hci_dev* %39, i32* null)
  br label %41

41:                                               ; preds = %33, %23
  %42 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @new_settings(%struct.hci_dev* %42, i64 %44)
  %46 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sock_put(i64 %51)
  br label %53

53:                                               ; preds = %49, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mgmt_pending_foreach(i32, %struct.hci_dev*, i32, %struct.cmd_lookup*) #2

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32, %struct.cmd_lookup*, i32) #2

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, %struct.cmd_lookup*, i32, i32, i32*) #2

declare dso_local i32 @ext_info_changed(%struct.hci_dev*, i32*) #2

declare dso_local i32 @new_settings(%struct.hci_dev*, i64) #2

declare dso_local i32 @sock_put(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
