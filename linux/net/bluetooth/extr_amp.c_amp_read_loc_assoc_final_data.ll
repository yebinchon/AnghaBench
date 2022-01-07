; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc_final_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc_final_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32, %struct.amp_mgr* }
%struct.amp_mgr = type { i32 }
%struct.hci_cp_read_local_amp_assoc = type { i8*, i8*, i32 }
%struct.hci_request = type { i32 }

@READ_LOC_AMP_ASSOC_FINAL = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_AMP_ASSOC = common dso_local global i32 0, align 4
@read_local_amp_assoc_complete = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_read_loc_assoc_final_data(%struct.hci_dev* %0, %struct.hci_conn* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_cp_read_local_amp_assoc, align 8
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca %struct.hci_request, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %4, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 1
  %11 = load %struct.amp_mgr*, %struct.amp_mgr** %10, align 8
  store %struct.amp_mgr* %11, %struct.amp_mgr** %6, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = call i8* @cpu_to_le16(i32 0)
  %17 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @READ_LOC_AMP_ASSOC_FINAL, align 4
  %24 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %25 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = call i32 @hci_req_init(%struct.hci_request* %7, %struct.hci_dev* %27)
  %29 = load i32, i32* @HCI_OP_READ_LOCAL_AMP_ASSOC, align 4
  %30 = call i32 @hci_req_add(%struct.hci_request* %7, i32 %29, i32 24, %struct.hci_cp_read_local_amp_assoc* %5)
  %31 = load i32, i32* @read_local_amp_assoc_complete, align 4
  %32 = call i32 @hci_req_run_skb(%struct.hci_request* %7, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %38 = call i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %2
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_read_local_amp_assoc*) #1

declare dso_local i32 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
