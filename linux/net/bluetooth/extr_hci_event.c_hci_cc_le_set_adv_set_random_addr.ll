; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_adv_set_random_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_set_adv_set_random_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_cp_le_set_adv_set_rand_addr = type { i32 }
%struct.adv_info = type { i32 }

@HCI_OP_LE_SET_ADV_SET_RAND_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_le_set_adv_set_random_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_le_set_adv_set_random_addr(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_cp_le_set_adv_set_rand_addr*, align 8
  %7 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* @HCI_OP_LE_SET_ADV_SET_RAND_ADDR, align 4
  %19 = call %struct.hci_cp_le_set_adv_set_rand_addr* @hci_sent_cmd_data(%struct.hci_dev* %17, i32 %18)
  store %struct.hci_cp_le_set_adv_set_rand_addr* %19, %struct.hci_cp_le_set_adv_set_rand_addr** %6, align 8
  %20 = load %struct.hci_cp_le_set_adv_set_rand_addr*, %struct.hci_cp_le_set_adv_set_rand_addr** %6, align 8
  %21 = icmp ne %struct.hci_cp_le_set_adv_set_rand_addr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %54

23:                                               ; preds = %16
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call i32 @hci_dev_lock(%struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 1
  %33 = load %struct.hci_cp_le_set_adv_set_rand_addr*, %struct.hci_cp_le_set_adv_set_rand_addr** %6, align 8
  %34 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, %struct.hci_cp_le_set_adv_set_rand_addr* %33, i32 0, i32 0
  %35 = call i32 @bacpy(i32* %32, i32* %34)
  br label %51

36:                                               ; preds = %23
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %37, i32 %40)
  store %struct.adv_info* %41, %struct.adv_info** %7, align 8
  %42 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %43 = icmp ne %struct.adv_info* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %46 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %45, i32 0, i32 0
  %47 = load %struct.hci_cp_le_set_adv_set_rand_addr*, %struct.hci_cp_le_set_adv_set_rand_addr** %6, align 8
  %48 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, %struct.hci_cp_le_set_adv_set_rand_addr* %47, i32 0, i32 0
  %49 = call i32 @bacpy(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = call i32 @hci_dev_unlock(%struct.hci_dev* %52)
  br label %54

54:                                               ; preds = %51, %22, %15
  ret void
}

declare dso_local %struct.hci_cp_le_set_adv_set_rand_addr* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
