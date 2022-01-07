; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_enable_ext_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_enable_ext_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_le_set_ext_adv_enable = type { i32, i32, i32, i32, i64 }
%struct.hci_cp_ext_adv_set = type { i32, i32, i32, i32, i64 }
%struct.adv_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_EXT_ADV_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hci_req_enable_ext_advertising(%struct.hci_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_cp_le_set_ext_adv_enable*, align 8
  %8 = alloca %struct.hci_cp_ext_adv_set*, align 8
  %9 = alloca [48 x i32], align 16
  %10 = alloca %struct.adv_info*, align 8
  %11 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %13 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %12, i32 0, i32 0
  %14 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  store %struct.hci_dev* %14, %struct.hci_dev** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %18, i32 %19)
  store %struct.adv_info* %20, %struct.adv_info** %10, align 8
  %21 = load %struct.adv_info*, %struct.adv_info** %10, align 8
  %22 = icmp ne %struct.adv_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %17
  br label %28

27:                                               ; preds = %2
  store %struct.adv_info* null, %struct.adv_info** %10, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 0
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to %struct.hci_cp_le_set_ext_adv_enable*
  store %struct.hci_cp_le_set_ext_adv_enable* %31, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %32 = load %struct.hci_cp_le_set_ext_adv_enable*, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %33 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, %struct.hci_cp_le_set_ext_adv_enable* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.hci_cp_ext_adv_set*
  store %struct.hci_cp_ext_adv_set* %36, %struct.hci_cp_ext_adv_set** %8, align 8
  %37 = load %struct.hci_cp_le_set_ext_adv_enable*, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %38 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_enable* %37, i32 0, i32 24)
  %39 = load %struct.hci_cp_le_set_ext_adv_enable*, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %40 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, %struct.hci_cp_le_set_ext_adv_enable* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.hci_cp_le_set_ext_adv_enable*, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %42 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, %struct.hci_cp_le_set_ext_adv_enable* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.hci_cp_ext_adv_set*, %struct.hci_cp_ext_adv_set** %8, align 8
  %44 = bitcast %struct.hci_cp_ext_adv_set* %43 to %struct.hci_cp_le_set_ext_adv_enable*
  %45 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_enable* %44, i32 0, i32 24)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.hci_cp_ext_adv_set*, %struct.hci_cp_ext_adv_set** %8, align 8
  %48 = getelementptr inbounds %struct.hci_cp_ext_adv_set, %struct.hci_cp_ext_adv_set* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.adv_info*, %struct.adv_info** %10, align 8
  %50 = icmp ne %struct.adv_info* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %28
  %52 = load %struct.adv_info*, %struct.adv_info** %10, align 8
  %53 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.adv_info*, %struct.adv_info** %10, align 8
  %58 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MSEC_PER_SEC, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sdiv i32 %62, 10
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = load %struct.hci_cp_ext_adv_set*, %struct.hci_cp_ext_adv_set** %8, align 8
  %66 = getelementptr inbounds %struct.hci_cp_ext_adv_set, %struct.hci_cp_ext_adv_set* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %51, %28
  %68 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %69 = load i32, i32* @HCI_OP_LE_SET_EXT_ADV_ENABLE, align 4
  %70 = load %struct.hci_cp_le_set_ext_adv_enable*, %struct.hci_cp_le_set_ext_adv_enable** %7, align 8
  %71 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, %struct.hci_cp_le_set_ext_adv_enable* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 24, %73
  %75 = add i64 24, %74
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 0
  %78 = call i32 @hci_req_add(%struct.hci_request* %68, i32 %69, i32 %76, i32* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %67, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_ext_adv_enable*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
