; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_ext_adv_term_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_ext_adv_term_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_evt_le_ext_adv_set_term = type { i32, i64 }
%struct.hci_conn = type { i32 }
%struct.adv_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@ADDR_LE_DEV_RANDOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_ext_adv_term_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_ext_adv_term_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_evt_le_ext_adv_set_term*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_evt_le_ext_adv_set_term*
  store %struct.hci_evt_le_ext_adv_set_term* %12, %struct.hci_evt_le_ext_adv_set_term** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hci_evt_le_ext_adv_set_term*, %struct.hci_evt_le_ext_adv_set_term** %5, align 8
  %17 = getelementptr inbounds %struct.hci_evt_le_ext_adv_set_term, %struct.hci_evt_le_ext_adv_set_term* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.hci_evt_le_ext_adv_set_term*, %struct.hci_evt_le_ext_adv_set_term** %5, align 8
  %21 = getelementptr inbounds %struct.hci_evt_le_ext_adv_set_term, %struct.hci_evt_le_ext_adv_set_term* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load %struct.hci_evt_le_ext_adv_set_term*, %struct.hci_evt_le_ext_adv_set_term** %5, align 8
  %28 = getelementptr inbounds %struct.hci_evt_le_ext_adv_set_term, %struct.hci_evt_le_ext_adv_set_term* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__le16_to_cpu(i32 %29)
  %31 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %26, i32 %30)
  store %struct.hci_conn* %31, %struct.hci_conn** %6, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %33 = icmp ne %struct.hci_conn* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %25
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %67

41:                                               ; preds = %34
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 2
  %51 = call i32 @bacpy(i32* %48, i32* %50)
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %53, i32 %56)
  store %struct.adv_info* %57, %struct.adv_info** %7, align 8
  %58 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %59 = icmp ne %struct.adv_info* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 0
  %63 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %64 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %63, i32 0, i32 0
  %65 = call i32 @bacpy(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %52
  br label %67

67:                                               ; preds = %24, %40, %46, %66, %25
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
