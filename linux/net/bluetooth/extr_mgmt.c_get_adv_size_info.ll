; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_adv_size_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_adv_size_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_cp_get_adv_size_info = type { i32, i32 }
%struct.mgmt_rp_get_adv_size_info = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_GET_ADV_SIZE_INFO = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@HCI_MAX_ADV_INSTANCES = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @get_adv_size_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_adv_size_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_get_adv_size_info*, align 8
  %11 = alloca %struct.mgmt_rp_get_adv_size_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_cp_get_adv_size_info*
  store %struct.mgmt_cp_get_adv_size_info* %16, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = call i32 @lmp_le_capable(%struct.hci_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MGMT_OP_GET_ADV_SIZE_INFO, align 4
  %30 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %31 = call i32 @mgmt_cmd_status(%struct.sock* %25, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %96

32:                                               ; preds = %4
  %33 = load %struct.mgmt_cp_get_adv_size_info*, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %34 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, %struct.mgmt_cp_get_adv_size_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.mgmt_cp_get_adv_size_info*, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %39 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, %struct.mgmt_cp_get_adv_size_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HCI_MAX_ADV_INSTANCES, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %32
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MGMT_OP_GET_ADV_SIZE_INFO, align 4
  %49 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %50 = call i32 @mgmt_cmd_status(%struct.sock* %44, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %96

51:                                               ; preds = %37
  %52 = load %struct.mgmt_cp_get_adv_size_info*, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %53 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, %struct.mgmt_cp_get_adv_size_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__le32_to_cpu(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = call i32 @get_supported_adv_flags(%struct.hci_dev* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MGMT_OP_GET_ADV_SIZE_INFO, align 4
  %69 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %70 = call i32 @mgmt_cmd_status(%struct.sock* %64, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %96

71:                                               ; preds = %51
  %72 = load %struct.mgmt_cp_get_adv_size_info*, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %73 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, %struct.mgmt_cp_get_adv_size_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, %struct.mgmt_rp_get_adv_size_info* %11, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load %struct.mgmt_cp_get_adv_size_info*, %struct.mgmt_cp_get_adv_size_info** %10, align 8
  %77 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, %struct.mgmt_cp_get_adv_size_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, %struct.mgmt_rp_get_adv_size_info* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i8* @tlv_data_max_len(%struct.hci_dev* %80, i32 %81, i32 1)
  %83 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, %struct.mgmt_rp_get_adv_size_info* %11, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i8* @tlv_data_max_len(%struct.hci_dev* %84, i32 %85, i32 0)
  %87 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, %struct.mgmt_rp_get_adv_size_info* %11, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MGMT_OP_GET_ADV_SIZE_INFO, align 4
  %93 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %94 = call i32 @mgmt_cmd_complete(%struct.sock* %88, i32 %91, i32 %92, i32 %93, %struct.mgmt_rp_get_adv_size_info* %11, i32 32)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %71, %63, %43, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @get_supported_adv_flags(%struct.hci_dev*) #1

declare dso_local i8* @tlv_data_max_len(%struct.hci_dev*, i32, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_get_adv_size_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
