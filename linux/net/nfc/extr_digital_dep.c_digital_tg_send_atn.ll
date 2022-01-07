; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_atn.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_atn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i64 }
%struct.digital_dep_req_res = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i32 0, align 4
@DIGITAL_CMD_DEP_RES = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_DID_BIT = common dso_local global i32 0, align 4
@digital_tg_recv_dep_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*)* @digital_tg_send_atn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_atn(%struct.nfc_digital_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_digital_dev*, align 8
  %4 = alloca %struct.digital_dep_req_res*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %3, align 8
  %7 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %8 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %7, i32 1)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_push(%struct.sk_buff* %15, i32 12)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %20, %struct.digital_dep_req_res** %4, align 8
  %21 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 4
  %22 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %4, align 8
  %23 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DIGITAL_CMD_DEP_RES, align 4
  %25 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %4, align 8
  %26 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU, align 4
  %28 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %4, align 8
  %29 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %31 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %14
  %35 = load i32, i32* @DIGITAL_NFC_DEP_PFB_DID_BIT, align 4
  %36 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %4, align 8
  %37 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %41, i32 0, i32 1
  %43 = call i32 @skb_put_data(%struct.sk_buff* %40, i32* %42, i32 4)
  br label %44

44:                                               ; preds = %34, %14
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %45, %struct.sk_buff* %46)
  %48 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %49 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %48, i32 0, i32 0
  %50 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 %50(%struct.sk_buff* %51)
  %53 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @digital_tg_recv_dep_req, align 4
  %56 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %53, %struct.sk_buff* %54, i32 1500, i32 %55, i32* null)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %44
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
