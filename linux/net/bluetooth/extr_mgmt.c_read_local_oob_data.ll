; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_READ_LOCAL_OOB_DATA = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_EXT_DATA = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_DATA = common dso_local global i32 0, align 4
@read_local_oob_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @read_local_oob_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_local_oob_data(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_pending_cmd*, align 8
  %10 = alloca %struct.hci_request, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @hdev_is_powered(%struct.hci_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %27 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %28 = call i32 @mgmt_cmd_status(%struct.sock* %22, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %85

29:                                               ; preds = %4
  %30 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %31 = call i32 @lmp_ssp_capable(%struct.hci_dev* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %39 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %40 = call i32 @mgmt_cmd_status(%struct.sock* %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %85

41:                                               ; preds = %29
  %42 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = call i64 @pending_find(i32 %42, %struct.hci_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %52 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %53 = call i32 @mgmt_cmd_status(%struct.sock* %47, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %85

54:                                               ; preds = %41
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %57 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %58 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %55, i32 %56, %struct.hci_dev* %57, i32* null, i32 0)
  store %struct.mgmt_pending_cmd* %58, %struct.mgmt_pending_cmd** %9, align 8
  %59 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %60 = icmp ne %struct.mgmt_pending_cmd* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %85

64:                                               ; preds = %54
  %65 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %66 = call i32 @hci_req_init(%struct.hci_request* %10, %struct.hci_dev* %65)
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = call i64 @bredr_sc_enabled(%struct.hci_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @HCI_OP_READ_LOCAL_OOB_EXT_DATA, align 4
  %72 = call i32 @hci_req_add(%struct.hci_request* %10, i32 %71, i32 0, i32* null)
  br label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @HCI_OP_READ_LOCAL_OOB_DATA, align 4
  %75 = call i32 @hci_req_add(%struct.hci_request* %10, i32 %74, i32 0, i32* null)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @read_local_oob_data_complete, align 4
  %78 = call i32 @hci_req_run_skb(%struct.hci_request* %10, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %9, align 8
  %83 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %61, %46, %33, %21
  %86 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %87 = call i32 @hci_dev_unlock(%struct.hci_dev* %86)
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i64 @bredr_sc_enabled(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
