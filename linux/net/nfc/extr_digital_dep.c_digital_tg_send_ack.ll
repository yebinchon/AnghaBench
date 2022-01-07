; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, %struct.sk_buff*, i32 (%struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i64 }
%struct.digital_data_exch = type { i32 }
%struct.digital_dep_req_res = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i32 0, align 4
@DIGITAL_CMD_DEP_RES = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_DID_BIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@digital_tg_recv_dep_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)* @digital_tg_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_ack(%struct.nfc_digital_dev* %0, %struct.digital_data_exch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.digital_data_exch*, align 8
  %6 = alloca %struct.digital_dep_req_res*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.digital_data_exch* %1, %struct.digital_data_exch** %5, align 8
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %10 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %9, i32 1)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call i32 @skb_push(%struct.sk_buff* %17, i32 12)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %22, %struct.digital_dep_req_res** %6, align 8
  %23 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 4
  %24 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %25 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DIGITAL_CMD_DEP_RES, align 4
  %27 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %28 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU, align 4
  %30 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %29, %32
  %34 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %35 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %37 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %16
  %41 = load i32, i32* @DIGITAL_NFC_DEP_PFB_DID_BIT, align 4
  %42 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %43 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %48 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %47, i32 0, i32 3
  %49 = call i32 @skb_put_data(%struct.sk_buff* %46, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %40, %16
  %51 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %52 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %54)
  %56 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %57 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %58, %struct.sk_buff* %59)
  %61 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %62 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %61, i32 0, i32 2
  %63 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 %63(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.sk_buff* @pskb_copy(%struct.sk_buff* %66, i32 %67)
  %69 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %70 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %69, i32 0, i32 1
  store %struct.sk_buff* %68, %struct.sk_buff** %70, align 8
  %71 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i32, i32* @digital_tg_recv_dep_req, align 4
  %74 = load %struct.digital_data_exch*, %struct.digital_data_exch** %5, align 8
  %75 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %71, %struct.sk_buff* %72, i32 1500, i32 %73, %struct.digital_data_exch* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %50
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %82 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %81, i32 0, i32 1
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %86 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %85, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  br label %87

87:                                               ; preds = %78, %50
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_PNI(i32) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @pskb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.digital_data_exch*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
