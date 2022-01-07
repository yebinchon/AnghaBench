; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_start_discovery_internal.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_start_discovery_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.mgmt_cp_start_discovery = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i64 0, align 8
@HCI_PERIODIC_INQ = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@MGMT_OP_START_LIMITED_DISCOVERY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@generic_cmd_complete = common dso_local global i32 0, align 4
@DISCOVERY_STARTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i32, i8*, i32)* @start_discovery_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_discovery_internal(%struct.sock* %0, %struct.hci_dev* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mgmt_cp_start_discovery*, align 8
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_cp_start_discovery*
  store %struct.mgmt_cp_start_discovery* %16, %struct.mgmt_cp_start_discovery** %11, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = call i32 @hdev_is_powered(%struct.hci_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %5
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %33 = load %struct.mgmt_cp_start_discovery*, %struct.mgmt_cp_start_discovery** %11, align 8
  %34 = getelementptr inbounds %struct.mgmt_cp_start_discovery, %struct.mgmt_cp_start_discovery* %33, i32 0, i32 0
  %35 = call i32 @mgmt_cmd_complete(%struct.sock* %27, i32 %30, i32 %31, i32 %32, i32* %34, i32 4)
  store i32 %35, i32* %14, align 4
  br label %123

36:                                               ; preds = %5
  %37 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DISCOVERY_STOPPED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = load i32, i32* @HCI_PERIODIC_INQ, align 4
  %46 = call i64 @hci_dev_test_flag(%struct.hci_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43, %36
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %55 = load %struct.mgmt_cp_start_discovery*, %struct.mgmt_cp_start_discovery** %11, align 8
  %56 = getelementptr inbounds %struct.mgmt_cp_start_discovery, %struct.mgmt_cp_start_discovery* %55, i32 0, i32 0
  %57 = call i32 @mgmt_cmd_complete(%struct.sock* %49, i32 %52, i32 %53, i32 %54, i32* %56, i32 4)
  store i32 %57, i32* %14, align 4
  br label %123

58:                                               ; preds = %43
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = load %struct.mgmt_cp_start_discovery*, %struct.mgmt_cp_start_discovery** %11, align 8
  %61 = getelementptr inbounds %struct.mgmt_cp_start_discovery, %struct.mgmt_cp_start_discovery* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @discovery_type_is_valid(%struct.hci_dev* %59, i32 %62, i32* %13)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mgmt_cp_start_discovery*, %struct.mgmt_cp_start_discovery** %11, align 8
  %73 = getelementptr inbounds %struct.mgmt_cp_start_discovery, %struct.mgmt_cp_start_discovery* %72, i32 0, i32 0
  %74 = call i32 @mgmt_cmd_complete(%struct.sock* %66, i32 %69, i32 %70, i32 %71, i32* %73, i32 4)
  store i32 %74, i32* %14, align 4
  br label %123

75:                                               ; preds = %58
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = call i32 @hci_discovery_filter_clear(%struct.hci_dev* %76)
  %78 = load %struct.mgmt_cp_start_discovery*, %struct.mgmt_cp_start_discovery** %11, align 8
  %79 = getelementptr inbounds %struct.mgmt_cp_start_discovery, %struct.mgmt_cp_start_discovery* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MGMT_OP_START_LIMITED_DISCOVERY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  br label %98

94:                                               ; preds = %75
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %99, i32 %100, %struct.hci_dev* %101, i8* %102, i32 %103)
  store %struct.mgmt_pending_cmd* %104, %struct.mgmt_pending_cmd** %12, align 8
  %105 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %106 = icmp ne %struct.mgmt_pending_cmd* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %123

110:                                              ; preds = %98
  %111 = load i32, i32* @generic_cmd_complete, align 4
  %112 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %113 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %115 = load i32, i32* @DISCOVERY_STARTING, align 4
  %116 = call i32 @hci_discovery_set_state(%struct.hci_dev* %114, i32 %115)
  %117 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %118 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %121 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %120, i32 0, i32 0
  %122 = call i32 @queue_work(i32 %119, i32* %121)
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %110, %107, %65, %48, %26
  %124 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %125 = call i32 @hci_dev_unlock(%struct.hci_dev* %124)
  %126 = load i32, i32* %14, align 4
  ret i32 %126
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @discovery_type_is_valid(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_discovery_filter_clear(%struct.hci_dev*) #1

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
