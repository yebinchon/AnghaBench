; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sensf_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sensf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.digital_sensf_req = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.digital_sensf_res = type { i32*, i32*, i32 }

@DIGITAL_SENSF_REQ_RC_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENSF_RES = common dso_local global i32 0, align 4
@DIGITAL_SENSF_NFCID2_NFC_DEP_B1 = common dso_local global i32 0, align 4
@DIGITAL_SENSF_NFCID2_NFC_DEP_B2 = common dso_local global i32 0, align 4
@DIGITAL_SENSF_RES_RD_AP_B1 = common dso_local global i32 0, align 4
@DIGITAL_SENSF_RES_RD_AP_B2 = common dso_local global i32 0, align 4
@digital_tg_recv_atr_or_sensf_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_sensf_req*)* @digital_tg_send_sensf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_sensf_res(%struct.nfc_digital_dev* %0, %struct.digital_sensf_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.digital_sensf_req*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.digital_sensf_res*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.digital_sensf_req* %1, %struct.digital_sensf_req** %5, align 8
  store i32 24, i32* %7, align 4
  %10 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %5, align 8
  %11 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DIGITAL_SENSF_REQ_RC_NONE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %111

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @skb_put(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.digital_sensf_res*
  store %struct.digital_sensf_res* %36, %struct.digital_sensf_res** %9, align 8
  %37 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memset(%struct.digital_sensf_res* %37, i32 0, i32 %38)
  %40 = load i32, i32* @DIGITAL_CMD_SENSF_RES, align 4
  %41 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %42 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @DIGITAL_SENSF_NFCID2_NFC_DEP_B1, align 4
  %44 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %45 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @DIGITAL_SENSF_NFCID2_NFC_DEP_B2, align 4
  %49 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %50 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %54 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @get_random_bytes(i32* %56, i32 6)
  %58 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %5, align 8
  %59 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %87 [
    i32 128, label %61
    i32 129, label %76
  ]

61:                                               ; preds = %29
  %62 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %5, align 8
  %63 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %66 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %5, align 8
  %70 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %73 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  br label %87

76:                                               ; preds = %29
  %77 = load i32, i32* @DIGITAL_SENSF_RES_RD_AP_B1, align 4
  %78 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %79 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @DIGITAL_SENSF_RES_RD_AP_B2, align 4
  %83 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %9, align 8
  %84 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %29, %76, %61
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i64 @skb_push(%struct.sk_buff* %90, i32 4)
  %92 = inttoptr i64 %91 to i32*
  store i32 %89, i32* %92, align 4
  %93 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %94 = call i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @digital_skb_add_crc_f(%struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %96, %87
  %100 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i32, i32* @digital_tg_recv_atr_or_sensf_req, align 4
  %103 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %100, %struct.sk_buff* %101, i32 300, i32 %102, i32* null)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %106, %99
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %26
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.digital_sensf_res*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_add_crc_f(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
