; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_le_start_enc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cs_le_start_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_le_start_enc = type { i32 }
%struct.hci_conn = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_START_ENC = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_ERROR_AUTH_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_le_start_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_le_start_enc(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_le_start_enc*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_OP_LE_START_ENC, align 4
  %20 = call %struct.hci_cp_le_start_enc* @hci_sent_cmd_data(%struct.hci_dev* %18, i32 %19)
  store %struct.hci_cp_le_start_enc* %20, %struct.hci_cp_le_start_enc** %5, align 8
  %21 = load %struct.hci_cp_le_start_enc*, %struct.hci_cp_le_start_enc** %5, align 8
  %22 = icmp ne %struct.hci_cp_le_start_enc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_cp_le_start_enc*, %struct.hci_cp_le_start_enc** %5, align 8
  %27 = getelementptr inbounds %struct.hci_cp_le_start_enc, %struct.hci_cp_le_start_enc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__le16_to_cpu(i32 %28)
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %25, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %6, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %47

34:                                               ; preds = %24
  %35 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_CONNECTED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %47

41:                                               ; preds = %34
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = load i32, i32* @HCI_ERROR_AUTH_FAILURE, align 4
  %44 = call i32 @hci_disconnect(%struct.hci_conn* %42, i32 %43)
  %45 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %46 = call i32 @hci_conn_drop(%struct.hci_conn* %45)
  br label %47

47:                                               ; preds = %41, %40, %33, %23
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = call i32 @hci_dev_unlock(%struct.hci_dev* %48)
  br label %50

50:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_cp_le_start_enc* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_disconnect(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
