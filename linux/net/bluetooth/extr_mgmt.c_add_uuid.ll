; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.mgmt_cp_add_uuid = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }
%struct.bt_uuid = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_ADD_UUID = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@add_uuid_complete = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @add_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_uuid(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_add_uuid*, align 8
  %10 = alloca %struct.mgmt_pending_cmd*, align 8
  %11 = alloca %struct.hci_request, align 4
  %12 = alloca %struct.bt_uuid*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_cp_add_uuid*
  store %struct.mgmt_cp_add_uuid* %15, %struct.mgmt_cp_add_uuid** %9, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = call i64 @pending_eir_or_class(%struct.hci_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MGMT_OP_ADD_UUID, align 4
  %31 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %32 = call i32 @mgmt_cmd_status(%struct.sock* %26, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  br label %102

33:                                               ; preds = %4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.bt_uuid* @kmalloc(i32 16, i32 %34)
  store %struct.bt_uuid* %35, %struct.bt_uuid** %12, align 8
  %36 = load %struct.bt_uuid*, %struct.bt_uuid** %12, align 8
  %37 = icmp ne %struct.bt_uuid* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %102

41:                                               ; preds = %33
  %42 = load %struct.bt_uuid*, %struct.bt_uuid** %12, align 8
  %43 = getelementptr inbounds %struct.bt_uuid, %struct.bt_uuid* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mgmt_cp_add_uuid*, %struct.mgmt_cp_add_uuid** %9, align 8
  %46 = getelementptr inbounds %struct.mgmt_cp_add_uuid, %struct.mgmt_cp_add_uuid* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %44, i32 %47, i32 16)
  %49 = load %struct.mgmt_cp_add_uuid*, %struct.mgmt_cp_add_uuid** %9, align 8
  %50 = getelementptr inbounds %struct.mgmt_cp_add_uuid, %struct.mgmt_cp_add_uuid* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bt_uuid*, %struct.bt_uuid** %12, align 8
  %53 = getelementptr inbounds %struct.bt_uuid, %struct.bt_uuid* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mgmt_cp_add_uuid*, %struct.mgmt_cp_add_uuid** %9, align 8
  %55 = getelementptr inbounds %struct.mgmt_cp_add_uuid, %struct.mgmt_cp_add_uuid* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @get_uuid_size(i32 %56)
  %58 = load %struct.bt_uuid*, %struct.bt_uuid** %12, align 8
  %59 = getelementptr inbounds %struct.bt_uuid, %struct.bt_uuid* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bt_uuid*, %struct.bt_uuid** %12, align 8
  %61 = getelementptr inbounds %struct.bt_uuid, %struct.bt_uuid* %60, i32 0, i32 0
  %62 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 2
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %66 = call i32 @hci_req_init(%struct.hci_request* %11, %struct.hci_dev* %65)
  %67 = call i32 @__hci_req_update_class(%struct.hci_request* %11)
  %68 = call i32 @__hci_req_update_eir(%struct.hci_request* %11)
  %69 = load i32, i32* @add_uuid_complete, align 4
  %70 = call i32 @hci_req_run(%struct.hci_request* %11, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %41
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @ENODATA, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %102

79:                                               ; preds = %73
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MGMT_OP_ADD_UUID, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mgmt_cmd_complete(%struct.sock* %80, i32 %83, i32 %84, i32 0, i32 %87, i32 3)
  store i32 %88, i32* %13, align 4
  br label %102

89:                                               ; preds = %41
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = load i32, i32* @MGMT_OP_ADD_UUID, align 4
  %92 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %90, i32 %91, %struct.hci_dev* %92, i8* %93, i32 %94)
  store %struct.mgmt_pending_cmd* %95, %struct.mgmt_pending_cmd** %10, align 8
  %96 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %10, align 8
  %97 = icmp ne %struct.mgmt_pending_cmd* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %102

101:                                              ; preds = %89
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %98, %79, %78, %38, %25
  %103 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %104 = call i32 @hci_dev_unlock(%struct.hci_dev* %103)
  %105 = load i32, i32* %13, align 4
  ret i32 %105
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @pending_eir_or_class(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local %struct.bt_uuid* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_uuid_size(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_update_class(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_eir(%struct.hci_request*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
