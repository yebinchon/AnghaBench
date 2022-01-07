; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_powered.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_powered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_POWERED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_POWER_OFF_TIMEOUT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_powered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_powered(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %14, %struct.mgmt_mode** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %20 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %25 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %34 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %35 = call i32 @mgmt_cmd_status(%struct.sock* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %23, %4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %38 = call i32 @hci_dev_lock(%struct.hci_dev* %37)
  %39 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %41 = call i64 @pending_find(i32 %39, %struct.hci_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %49 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %50 = call i32 @mgmt_cmd_status(%struct.sock* %44, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %122

51:                                               ; preds = %36
  %52 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %53 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = call i32 @hdev_is_powered(%struct.hci_dev* %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = call i32 @send_settings_rsp(%struct.sock* %63, i32 %64, %struct.hci_dev* %65)
  store i32 %66, i32* %12, align 4
  br label %122

67:                                               ; preds = %51
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = load i32, i32* @MGMT_OP_SET_POWERED, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %68, i32 %69, %struct.hci_dev* %70, i8* %71, i32 %72)
  store %struct.mgmt_pending_cmd* %73, %struct.mgmt_pending_cmd** %11, align 8
  %74 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %75 = icmp ne %struct.mgmt_pending_cmd* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %122

79:                                               ; preds = %67
  %80 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %81 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 2
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  store i32 0, i32* %12, align 4
  br label %121

91:                                               ; preds = %79
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = call i32 @clean_up_hci_state(%struct.hci_dev* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* @HCI_POWER_OFF_TIMEOUT, align 4
  %103 = call i32 @queue_delayed_work(i32 %99, %struct.TYPE_3__* %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @ENODATA, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 0
  %112 = call i32 @cancel_delayed_work(%struct.TYPE_3__* %111)
  %113 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @queue_work(i32 %115, i32* %118)
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %109, %104
  br label %121

121:                                              ; preds = %120, %84
  br label %122

122:                                              ; preds = %121, %76, %62, %43
  %123 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %124 = call i32 @hci_dev_unlock(%struct.hci_dev* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %28
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @clean_up_hci_state(%struct.hci_dev*) #1

declare dso_local i32 @queue_delayed_work(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @cancel_delayed_work(%struct.TYPE_3__*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
