; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_send_conn_param_neg_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_send_conn_param_neg_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_le_conn_param_req_neg_reply = type { i32, i32 }

@HCI_OP_LE_CONN_PARAM_REQ_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @send_conn_param_neg_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_conn_param_neg_reply(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_cp_le_conn_param_req_neg_reply, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @cpu_to_le16(i32 %8)
  %10 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_neg_reply, %struct.hci_cp_le_conn_param_req_neg_reply* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_neg_reply, %struct.hci_cp_le_conn_param_req_neg_reply* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = load i32, i32* @HCI_OP_LE_CONN_PARAM_REQ_NEG_REPLY, align 4
  %15 = call i32 @hci_send_cmd(%struct.hci_dev* %13, i32 %14, i32 8, %struct.hci_cp_le_conn_param_req_neg_reply* %7)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_le_conn_param_req_neg_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
