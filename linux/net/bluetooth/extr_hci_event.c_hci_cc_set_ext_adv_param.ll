; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_set_ext_adv_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_set_ext_adv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_le_set_ext_adv_params = type { i32, i64 }
%struct.hci_cp_le_set_ext_adv_params = type { i32 }
%struct.adv_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_SET_EXT_ADV_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_set_ext_adv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_set_ext_adv_param(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_le_set_ext_adv_params*, align 8
  %6 = alloca %struct.hci_cp_le_set_ext_adv_params*, align 8
  %7 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_rp_le_set_ext_adv_params*
  store %struct.hci_rp_le_set_ext_adv_params* %12, %struct.hci_rp_le_set_ext_adv_params** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_rp_le_set_ext_adv_params*, %struct.hci_rp_le_set_ext_adv_params** %5, align 8
  %17 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, %struct.hci_rp_le_set_ext_adv_params* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.hci_rp_le_set_ext_adv_params*, %struct.hci_rp_le_set_ext_adv_params** %5, align 8
  %21 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, %struct.hci_rp_le_set_ext_adv_params* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* @HCI_OP_LE_SET_EXT_ADV_PARAMS, align 4
  %28 = call %struct.hci_cp_le_set_ext_adv_params* @hci_sent_cmd_data(%struct.hci_dev* %26, i32 %27)
  store %struct.hci_cp_le_set_ext_adv_params* %28, %struct.hci_cp_le_set_ext_adv_params** %6, align 8
  %29 = load %struct.hci_cp_le_set_ext_adv_params*, %struct.hci_cp_le_set_ext_adv_params** %6, align 8
  %30 = icmp ne %struct.hci_cp_le_set_ext_adv_params* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %73

32:                                               ; preds = %25
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i32 @hci_dev_lock(%struct.hci_dev* %33)
  %35 = load %struct.hci_cp_le_set_ext_adv_params*, %struct.hci_cp_le_set_ext_adv_params** %6, align 8
  %36 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.hci_rp_le_set_ext_adv_params*, %struct.hci_rp_le_set_ext_adv_params** %5, align 8
  %46 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, %struct.hci_rp_le_set_ext_adv_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %65

50:                                               ; preds = %32
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %51, i32 %54)
  store %struct.adv_info* %55, %struct.adv_info** %7, align 8
  %56 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %57 = icmp ne %struct.adv_info* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.hci_rp_le_set_ext_adv_params*, %struct.hci_rp_le_set_ext_adv_params** %5, align 8
  %60 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, %struct.hci_rp_le_set_ext_adv_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %63 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %50
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hci_req_update_adv_data(%struct.hci_dev* %66, i32 %69)
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = call i32 @hci_dev_unlock(%struct.hci_dev* %71)
  br label %73

73:                                               ; preds = %65, %31, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_cp_le_set_ext_adv_params* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_update_adv_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
