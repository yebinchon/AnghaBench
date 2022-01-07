; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_connectable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_connectable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i64, i32, i32, i32, i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@MGMT_OP_SET_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_OP_SET_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_connectable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_connectable(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = load i32, i32* @HCI_LE_ENABLED, align 4
  %21 = call i32 @hci_dev_test_flag(%struct.hci_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %26 = call i32 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %34 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %35 = call i32 @mgmt_cmd_status(%struct.sock* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %136

36:                                               ; preds = %23, %4
  %37 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %38 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %43 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %52 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %53 = call i32 @mgmt_cmd_status(%struct.sock* %47, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %136

54:                                               ; preds = %41, %36
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = call i32 @hci_dev_lock(%struct.hci_dev* %55)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = call i32 @hdev_is_powered(%struct.hci_dev* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %62 = load %struct.sock*, %struct.sock** %6, align 8
  %63 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %64 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_connectable_update_settings(%struct.hci_dev* %61, %struct.sock* %62, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %132

67:                                               ; preds = %54
  %68 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = call i64 @pending_find(i32 %68, %struct.hci_dev* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %75 = call i64 @pending_find(i32 %73, %struct.hci_dev* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72, %67
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %83 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %84 = call i32 @mgmt_cmd_status(%struct.sock* %78, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %132

85:                                               ; preds = %72
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %86, i32 %87, %struct.hci_dev* %88, i8* %89, i32 %90)
  store %struct.mgmt_pending_cmd* %91, %struct.mgmt_pending_cmd** %11, align 8
  %92 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %93 = icmp ne %struct.mgmt_pending_cmd* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %132

97:                                               ; preds = %85
  %98 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %99 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = load i32, i32* @HCI_CONNECTABLE, align 4
  %105 = call i32 @hci_dev_set_flag(%struct.hci_dev* %103, i32 %104)
  br label %125

106:                                              ; preds = %97
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 3
  %114 = call i32 @cancel_delayed_work(i32* %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %118 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %116, i32 %117)
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %121 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %119, i32 %120)
  %122 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %123 = load i32, i32* @HCI_CONNECTABLE, align 4
  %124 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %122, i32 %123)
  br label %125

125:                                              ; preds = %115, %102
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %130 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %129, i32 0, i32 1
  %131 = call i32 @queue_work(i32 %128, i32* %130)
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %125, %94, %77, %60
  %133 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %134 = call i32 @hci_dev_unlock(%struct.hci_dev* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %46, %28
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @set_connectable_update_settings(%struct.hci_dev*, %struct.sock*, i32) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
