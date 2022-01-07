; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_stop_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_stop_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mgmt_cp_stop_discovery = type { i64 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_STOP_DISCOVERY = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@generic_cmd_complete = common dso_local global i32 0, align 4
@DISCOVERY_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @stop_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_discovery(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_stop_discovery*, align 8
  %10 = alloca %struct.mgmt_pending_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.mgmt_cp_stop_discovery*
  store %struct.mgmt_cp_stop_discovery* %13, %struct.mgmt_cp_stop_discovery** %9, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @hci_discovery_active(%struct.hci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MGMT_OP_STOP_DISCOVERY, align 4
  %29 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %30 = load %struct.mgmt_cp_stop_discovery*, %struct.mgmt_cp_stop_discovery** %9, align 8
  %31 = getelementptr inbounds %struct.mgmt_cp_stop_discovery, %struct.mgmt_cp_stop_discovery* %30, i32 0, i32 0
  %32 = call i32 @mgmt_cmd_complete(%struct.sock* %24, i32 %27, i32 %28, i32 %29, i64* %31, i32 8)
  store i32 %32, i32* %11, align 4
  br label %77

33:                                               ; preds = %4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mgmt_cp_stop_discovery*, %struct.mgmt_cp_stop_discovery** %9, align 8
  %39 = getelementptr inbounds %struct.mgmt_cp_stop_discovery, %struct.mgmt_cp_stop_discovery* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MGMT_OP_STOP_DISCOVERY, align 4
  %48 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %49 = load %struct.mgmt_cp_stop_discovery*, %struct.mgmt_cp_stop_discovery** %9, align 8
  %50 = getelementptr inbounds %struct.mgmt_cp_stop_discovery, %struct.mgmt_cp_stop_discovery* %49, i32 0, i32 0
  %51 = call i32 @mgmt_cmd_complete(%struct.sock* %43, i32 %46, i32 %47, i32 %48, i64* %50, i32 8)
  store i32 %51, i32* %11, align 4
  br label %77

52:                                               ; preds = %33
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = load i32, i32* @MGMT_OP_STOP_DISCOVERY, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %53, i32 %54, %struct.hci_dev* %55, i8* %56, i32 %57)
  store %struct.mgmt_pending_cmd* %58, %struct.mgmt_pending_cmd** %10, align 8
  %59 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %60 = icmp ne %struct.mgmt_pending_cmd* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %77

64:                                               ; preds = %52
  %65 = load i32, i32* @generic_cmd_complete, align 4
  %66 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %67 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %69 = load i32, i32* @DISCOVERY_STOPPING, align 4
  %70 = call i32 @hci_discovery_set_state(%struct.hci_dev* %68, i32 %69)
  %71 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %64, %61, %42, %23
  %78 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %79 = call i32 @hci_dev_unlock(%struct.hci_dev* %78)
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_discovery_active(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i64*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_discovery_set_state(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
