; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_disconnect = type { i32 }
%struct.hci_conn = type { i32, i32, i32 }

@HCI_OP_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_disconnect(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_disconnect*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = load i32, i32* @HCI_OP_DISCONNECT, align 4
  %13 = call %struct.hci_cp_disconnect* @hci_sent_cmd_data(%struct.hci_dev* %11, i32 %12)
  store %struct.hci_cp_disconnect* %13, %struct.hci_cp_disconnect** %5, align 8
  %14 = load %struct.hci_cp_disconnect*, %struct.hci_cp_disconnect** %5, align 8
  %15 = icmp ne %struct.hci_cp_disconnect* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %43

17:                                               ; preds = %10
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.hci_cp_disconnect*, %struct.hci_cp_disconnect** %5, align 8
  %22 = getelementptr inbounds %struct.hci_cp_disconnect, %struct.hci_cp_disconnect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %20, i32 %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = icmp ne %struct.hci_conn* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %31 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %30, i32 0, i32 2
  %32 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mgmt_disconnect_failed(%struct.hci_dev* %29, i32* %31, i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %17
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = call i32 @hci_dev_unlock(%struct.hci_dev* %41)
  br label %43

43:                                               ; preds = %40, %16, %9
  ret void
}

declare dso_local %struct.hci_cp_disconnect* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @mgmt_disconnect_failed(%struct.hci_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
