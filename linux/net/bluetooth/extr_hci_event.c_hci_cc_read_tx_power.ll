; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_cp_read_tx_power = type { i32 }
%struct.hci_rp_read_tx_power = type { i32, i32, i64 }
%struct.hci_conn = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_READ_TX_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_tx_power(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_cp_read_tx_power*, align 8
  %6 = alloca %struct.hci_rp_read_tx_power*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_rp_read_tx_power*
  store %struct.hci_rp_read_tx_power* %12, %struct.hci_rp_read_tx_power** %6, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_rp_read_tx_power*, %struct.hci_rp_read_tx_power** %6, align 8
  %17 = getelementptr inbounds %struct.hci_rp_read_tx_power, %struct.hci_rp_read_tx_power* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.hci_rp_read_tx_power*, %struct.hci_rp_read_tx_power** %6, align 8
  %21 = getelementptr inbounds %struct.hci_rp_read_tx_power, %struct.hci_rp_read_tx_power* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* @HCI_OP_READ_TX_POWER, align 4
  %28 = call %struct.hci_cp_read_tx_power* @hci_sent_cmd_data(%struct.hci_dev* %26, i32 %27)
  store %struct.hci_cp_read_tx_power* %28, %struct.hci_cp_read_tx_power** %5, align 8
  %29 = load %struct.hci_cp_read_tx_power*, %struct.hci_cp_read_tx_power** %5, align 8
  %30 = icmp ne %struct.hci_cp_read_tx_power* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %64

32:                                               ; preds = %25
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i32 @hci_dev_lock(%struct.hci_dev* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load %struct.hci_rp_read_tx_power*, %struct.hci_rp_read_tx_power** %6, align 8
  %37 = getelementptr inbounds %struct.hci_rp_read_tx_power, %struct.hci_rp_read_tx_power* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__le16_to_cpu(i32 %38)
  %40 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %35, i32 %39)
  store %struct.hci_conn* %40, %struct.hci_conn** %7, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %42 = icmp ne %struct.hci_conn* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.hci_cp_read_tx_power*, %struct.hci_cp_read_tx_power** %5, align 8
  %46 = getelementptr inbounds %struct.hci_cp_read_tx_power, %struct.hci_cp_read_tx_power* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %60 [
    i32 0, label %48
    i32 1, label %54
  ]

48:                                               ; preds = %44
  %49 = load %struct.hci_rp_read_tx_power*, %struct.hci_rp_read_tx_power** %6, align 8
  %50 = getelementptr inbounds %struct.hci_rp_read_tx_power, %struct.hci_rp_read_tx_power* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %53 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.hci_rp_read_tx_power*, %struct.hci_rp_read_tx_power** %6, align 8
  %56 = getelementptr inbounds %struct.hci_rp_read_tx_power, %struct.hci_rp_read_tx_power* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %44, %54, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = call i32 @hci_dev_unlock(%struct.hci_dev* %62)
  br label %64

64:                                               ; preds = %61, %31, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_cp_read_tx_power* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
