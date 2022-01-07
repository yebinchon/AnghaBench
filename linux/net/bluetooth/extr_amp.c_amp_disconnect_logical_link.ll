; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_disconnect_logical_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_disconnect_logical_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_chan = type { i32, %struct.hci_conn* }
%struct.hci_conn = type { i64, i32 }
%struct.hci_cp_disconn_logical_link = type { i32 }

@BT_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"hchan %p not connected\00", align 1
@HCI_OP_DISCONN_LOGICAL_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_disconnect_logical_link(%struct.hci_chan* %0) #0 {
  %2 = alloca %struct.hci_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_cp_disconn_logical_link, align 4
  store %struct.hci_chan* %0, %struct.hci_chan** %2, align 8
  %5 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %6 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %5, i32 0, i32 1
  %7 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  store %struct.hci_conn* %7, %struct.hci_conn** %3, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BT_CONNECTED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.hci_chan* %14)
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  %18 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.hci_cp_disconn_logical_link, %struct.hci_cp_disconn_logical_link* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HCI_OP_DISCONN_LOGICAL_LINK, align 4
  %26 = call i32 @hci_send_cmd(i32 %24, i32 %25, i32 4, %struct.hci_cp_disconn_logical_link* %4)
  br label %27

27:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_chan*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_disconn_logical_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
