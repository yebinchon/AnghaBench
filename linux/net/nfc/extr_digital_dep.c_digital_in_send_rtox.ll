; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_rtox.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_rtox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.digital_data_exch = type { i32 }
%struct.digital_dep_req_res = type { i32, i32, i32 }

@digital_rwt_map = common dso_local global i32* null, align 8
@DIGITAL_NFC_DEP_IN_MAX_WT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i32 0, align 4
@DIGITAL_CMD_DEP_REQ = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_TIMEOUT_BIT = common dso_local global i32 0, align 4
@digital_in_recv_dep_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*, i32)* @digital_in_send_rtox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_rtox(%struct.nfc_digital_dev* %0, %struct.digital_data_exch* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_digital_dev*, align 8
  %6 = alloca %struct.digital_data_exch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.digital_dep_req_res*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %5, align 8
  store %struct.digital_data_exch* %1, %struct.digital_data_exch** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32*, i32** @digital_rwt_map, align 8
  %19 = load i64, i64* @DIGITAL_NFC_DEP_IN_MAX_WT, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32*, i32** @digital_rwt_map, align 8
  %25 = load i64, i64* @DIGITAL_NFC_DEP_IN_MAX_WT, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %23, %3
  %29 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %30 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %29, i32 1)
  store %struct.sk_buff* %30, %struct.sk_buff** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @skb_put_u8(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 @skb_push(%struct.sk_buff* %40, i32 12)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %45, %struct.digital_dep_req_res** %8, align 8
  %46 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 4
  %47 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %48 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @DIGITAL_CMD_DEP_REQ, align 4
  %50 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %51 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU, align 4
  %53 = load i32, i32* @DIGITAL_NFC_DEP_PFB_TIMEOUT_BIT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %56 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %57, %struct.sk_buff* %58)
  %60 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %61 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %60, i32 0, i32 1
  %62 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i32 %62(%struct.sk_buff* %63)
  %65 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @digital_in_recv_dep_res, align 4
  %69 = load %struct.digital_data_exch*, %struct.digital_data_exch** %6, align 8
  %70 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %65, %struct.sk_buff* %66, i32 %67, i32 %68, %struct.digital_data_exch* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %36
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %36
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %33
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.digital_data_exch*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
