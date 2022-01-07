; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_read_loc_assoc_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.amp_assoc }
%struct.amp_assoc = type { i32 }
%struct.hci_cp_read_local_amp_assoc = type { i8*, i8*, i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s handle %d\00", align 1
@HCI_OP_READ_LOCAL_AMP_ASSOC = common dso_local global i32 0, align 4
@read_local_amp_assoc_complete = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_read_loc_assoc_frag(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_read_local_amp_assoc, align 8
  %6 = alloca %struct.amp_assoc*, align 8
  %7 = alloca %struct.hci_request, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 2
  store %struct.amp_assoc* %10, %struct.amp_assoc** %6, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %24 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, %struct.hci_cp_read_local_amp_assoc* %5, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 @hci_req_init(%struct.hci_request* %7, %struct.hci_dev* %28)
  %30 = load i32, i32* @HCI_OP_READ_LOCAL_AMP_ASSOC, align 4
  %31 = call i32 @hci_req_add(%struct.hci_request* %7, i32 %30, i32 24, %struct.hci_cp_read_local_amp_assoc* %5)
  %32 = load i32, i32* @read_local_amp_assoc_complete, align 4
  %33 = call i32 @hci_req_run_skb(%struct.hci_request* %7, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %39 = call i32 @a2mp_send_getampassoc_rsp(%struct.hci_dev* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

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
