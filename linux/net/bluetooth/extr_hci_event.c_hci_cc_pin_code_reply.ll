; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_pin_code_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_pin_code_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_pin_code_reply = type { i64, i32 }
%struct.hci_cp_pin_code_reply = type { i32, i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_OP_PIN_CODE_REPLY = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_pin_code_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_pin_code_reply(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_pin_code_reply*, align 8
  %6 = alloca %struct.hci_cp_pin_code_reply*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_rp_pin_code_reply*
  store %struct.hci_rp_pin_code_reply* %12, %struct.hci_rp_pin_code_reply** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_rp_pin_code_reply*, %struct.hci_rp_pin_code_reply** %5, align 8
  %17 = getelementptr inbounds %struct.hci_rp_pin_code_reply, %struct.hci_rp_pin_code_reply* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @HCI_MGMT, align 4
  %24 = call i64 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.hci_rp_pin_code_reply*, %struct.hci_rp_pin_code_reply** %5, align 8
  %29 = getelementptr inbounds %struct.hci_rp_pin_code_reply, %struct.hci_rp_pin_code_reply* %28, i32 0, i32 1
  %30 = load %struct.hci_rp_pin_code_reply*, %struct.hci_rp_pin_code_reply** %5, align 8
  %31 = getelementptr inbounds %struct.hci_rp_pin_code_reply, %struct.hci_rp_pin_code_reply* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mgmt_pin_code_reply_complete(%struct.hci_dev* %27, i32* %29, i64 %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = load %struct.hci_rp_pin_code_reply*, %struct.hci_rp_pin_code_reply** %5, align 8
  %36 = getelementptr inbounds %struct.hci_rp_pin_code_reply, %struct.hci_rp_pin_code_reply* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %62

40:                                               ; preds = %34
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load i32, i32* @HCI_OP_PIN_CODE_REPLY, align 4
  %43 = call %struct.hci_cp_pin_code_reply* @hci_sent_cmd_data(%struct.hci_dev* %41, i32 %42)
  store %struct.hci_cp_pin_code_reply* %43, %struct.hci_cp_pin_code_reply** %6, align 8
  %44 = load %struct.hci_cp_pin_code_reply*, %struct.hci_cp_pin_code_reply** %6, align 8
  %45 = icmp ne %struct.hci_cp_pin_code_reply* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %62

47:                                               ; preds = %40
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = load i32, i32* @ACL_LINK, align 4
  %50 = load %struct.hci_cp_pin_code_reply*, %struct.hci_cp_pin_code_reply** %6, align 8
  %51 = getelementptr inbounds %struct.hci_cp_pin_code_reply, %struct.hci_cp_pin_code_reply* %50, i32 0, i32 1
  %52 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %48, i32 %49, i32* %51)
  store %struct.hci_conn* %52, %struct.hci_conn** %7, align 8
  %53 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %54 = icmp ne %struct.hci_conn* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.hci_cp_pin_code_reply*, %struct.hci_cp_pin_code_reply** %6, align 8
  %57 = getelementptr inbounds %struct.hci_cp_pin_code_reply, %struct.hci_cp_pin_code_reply* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %47
  br label %62

62:                                               ; preds = %61, %46, %39
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = call i32 @hci_dev_unlock(%struct.hci_dev* %63)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_pin_code_reply_complete(%struct.hci_dev*, i32*, i64) #1

declare dso_local %struct.hci_cp_pin_code_reply* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
