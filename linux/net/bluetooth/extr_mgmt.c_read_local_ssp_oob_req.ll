; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_ssp_oob_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_ssp_oob_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sock = type { i32 }
%struct.mgmt_cp_read_local_oob_ext_data = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@MGMT_OP_READ_LOCAL_OOB_EXT_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_EXT_DATA = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_DATA = common dso_local global i32 0, align 4
@read_local_oob_ext_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sock*, %struct.mgmt_cp_read_local_oob_ext_data*)* @read_local_ssp_oob_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_local_ssp_oob_req(%struct.hci_dev* %0, %struct.sock* %1, %struct.mgmt_cp_read_local_oob_ext_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.mgmt_cp_read_local_oob_ext_data*, align 8
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  %9 = alloca %struct.hci_request, align 4
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.mgmt_cp_read_local_oob_ext_data* %2, %struct.mgmt_cp_read_local_oob_ext_data** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_EXT_DATA, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %14 = load %struct.mgmt_cp_read_local_oob_ext_data*, %struct.mgmt_cp_read_local_oob_ext_data** %7, align 8
  %15 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %11, i32 %12, %struct.hci_dev* %13, %struct.mgmt_cp_read_local_oob_ext_data* %14, i32 4)
  store %struct.mgmt_pending_cmd* %15, %struct.mgmt_pending_cmd** %8, align 8
  %16 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %17 = icmp ne %struct.mgmt_pending_cmd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %23 = call i32 @hci_req_init(%struct.hci_request* %9, %struct.hci_dev* %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = call i64 @bredr_sc_enabled(%struct.hci_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @HCI_OP_READ_LOCAL_OOB_EXT_DATA, align 4
  %29 = call i32 @hci_req_add(%struct.hci_request* %9, i32 %28, i32 0, i32* null)
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @HCI_OP_READ_LOCAL_OOB_DATA, align 4
  %32 = call i32 @hci_req_add(%struct.hci_request* %9, i32 %31, i32 0, i32* null)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @read_local_oob_ext_data_complete, align 4
  %35 = call i32 @hci_req_run_skb(%struct.hci_request* %9, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %40 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %38, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, %struct.mgmt_cp_read_local_oob_ext_data*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i64 @bredr_sc_enabled(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
