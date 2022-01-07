; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_adv_enable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_adv_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_conn = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_SET_ADV_ENABLE = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_le_set_adv_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_le_set_adv_enable(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @HCI_OP_LE_SET_ADV_ENABLE, align 4
  %24 = call i64* @hci_sent_cmd_data(%struct.hci_dev* %22, i32 %23)
  store i64* %24, i64** %5, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %60

28:                                               ; preds = %21
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = call i32 @hci_dev_lock(%struct.hci_dev* %29)
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load i32, i32* @HCI_LE_ADV, align 4
  %37 = call i32 @hci_dev_set_flag(%struct.hci_dev* %35, i32 %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = call %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev* %38)
  store %struct.hci_conn* %39, %struct.hci_conn** %7, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %41 = icmp ne %struct.hci_conn* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 1
  %48 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @queue_delayed_work(i32 %45, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %42, %34
  br label %57

53:                                               ; preds = %28
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = load i32, i32* @HCI_LE_ADV, align 4
  %56 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = call i32 @hci_dev_unlock(%struct.hci_dev* %58)
  br label %60

60:                                               ; preds = %57, %27, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i64* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
