; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.hci_cp_read_local_amp_assoc }
%struct.hci_cp_read_local_amp_assoc = type { i32 }
%struct.amp_mgr = type { i32 }
%struct.hci_request = type { i32 }

@READ_LOC_AMP_ASSOC = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_AMP_ASSOC = common dso_local global i32 0, align 4
@read_local_amp_assoc_complete = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_read_loc_assoc(%struct.hci_dev* %0, %struct.amp_mgr* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.amp_mgr*, align 8
  %5 = alloca %struct.hci_cp_read_local_amp_assoc, align 4
  %6 = alloca %struct.hci_request, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.amp_mgr* %1, %struct.amp_mgr** %4, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 1
  %10 = call i32 @memset(%struct.hci_cp_read_local_amp_assoc* %9, i32 0, i32 4)
  %11 = call i32 @memset(%struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 4)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @READ_LOC_AMP_ASSOC, align 4
  %18 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %19 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = call i32 @hci_req_init(%struct.hci_request* %6, %struct.hci_dev* %21)
  %23 = load i32, i32* @HCI_OP_READ_LOCAL_AMP_ASSOC, align 4
  %24 = call i32 @hci_req_add(%struct.hci_request* %6, i32 %23, i32 4, %struct.hci_cp_read_local_amp_assoc* %5)
  %25 = load i32, i32* @read_local_amp_assoc_complete, align 4
  %26 = call i32 @hci_req_run_skb(%struct.hci_request* %6, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %32 = call i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @memset(%struct.hci_cp_read_local_amp_assoc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

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
