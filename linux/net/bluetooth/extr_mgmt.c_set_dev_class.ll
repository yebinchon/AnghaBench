; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_dev_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_dev_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.mgmt_cp_set_dev_class = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_DEV_CLASS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_SERVICE_CACHE = common dso_local global i32 0, align 4
@set_class_complete = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_dev_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dev_class(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_dev_class*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_cp_set_dev_class*
  store %struct.mgmt_cp_set_dev_class* %15, %struct.mgmt_cp_set_dev_class** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = call i32 @lmp_bredr_capable(%struct.hci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %29 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %30 = call i32 @mgmt_cmd_status(%struct.sock* %24, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %144

31:                                               ; preds = %4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %33 = call i32 @hci_dev_lock(%struct.hci_dev* %32)
  %34 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %35 = call i64 @pending_eir_or_class(%struct.hci_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %43 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %44 = call i32 @mgmt_cmd_status(%struct.sock* %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %140

45:                                               ; preds = %31
  %46 = load %struct.mgmt_cp_set_dev_class*, %struct.mgmt_cp_set_dev_class** %10, align 8
  %47 = getelementptr inbounds %struct.mgmt_cp_set_dev_class, %struct.mgmt_cp_set_dev_class* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.mgmt_cp_set_dev_class*, %struct.mgmt_cp_set_dev_class** %10, align 8
  %53 = getelementptr inbounds %struct.mgmt_cp_set_dev_class, %struct.mgmt_cp_set_dev_class* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 224
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51, %45
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %63 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %64 = call i32 @mgmt_cmd_status(%struct.sock* %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  br label %140

65:                                               ; preds = %51
  %66 = load %struct.mgmt_cp_set_dev_class*, %struct.mgmt_cp_set_dev_class** %10, align 8
  %67 = getelementptr inbounds %struct.mgmt_cp_set_dev_class, %struct.mgmt_cp_set_dev_class* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mgmt_cp_set_dev_class*, %struct.mgmt_cp_set_dev_class** %10, align 8
  %72 = getelementptr inbounds %struct.mgmt_cp_set_dev_class, %struct.mgmt_cp_set_dev_class* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = call i32 @hdev_is_powered(%struct.hci_dev* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %65
  %80 = load %struct.sock*, %struct.sock** %6, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mgmt_cmd_complete(%struct.sock* %80, i32 %83, i32 %84, i32 0, i32 %87, i32 3)
  store i32 %88, i32* %13, align 4
  br label %140

89:                                               ; preds = %65
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %90)
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = load i32, i32* @HCI_SERVICE_CACHE, align 4
  %94 = call i64 @hci_dev_test_and_clear_flag(%struct.hci_dev* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = call i32 @hci_dev_unlock(%struct.hci_dev* %97)
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %99, i32 0, i32 4
  %101 = call i32 @cancel_delayed_work_sync(i32* %100)
  %102 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %103 = call i32 @hci_dev_lock(%struct.hci_dev* %102)
  %104 = call i32 @__hci_req_update_eir(%struct.hci_request* %12)
  br label %105

105:                                              ; preds = %96, %89
  %106 = call i32 @__hci_req_update_class(%struct.hci_request* %12)
  %107 = load i32, i32* @set_class_complete, align 4
  %108 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @ENODATA, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %140

117:                                              ; preds = %111
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %123 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %124 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mgmt_cmd_complete(%struct.sock* %118, i32 %121, i32 %122, i32 0, i32 %125, i32 3)
  store i32 %126, i32* %13, align 4
  br label %140

127:                                              ; preds = %105
  %128 = load %struct.sock*, %struct.sock** %6, align 8
  %129 = load i32, i32* @MGMT_OP_SET_DEV_CLASS, align 4
  %130 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %128, i32 %129, %struct.hci_dev* %130, i8* %131, i32 %132)
  store %struct.mgmt_pending_cmd* %133, %struct.mgmt_pending_cmd** %11, align 8
  %134 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %135 = icmp ne %struct.mgmt_pending_cmd* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %13, align 4
  br label %140

139:                                              ; preds = %127
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %136, %117, %116, %79, %57, %37
  %141 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %142 = call i32 @hci_dev_unlock(%struct.hci_dev* %141)
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %23
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @pending_eir_or_class(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @__hci_req_update_eir(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_class(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
