; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_atr_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_atr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i64, i32 (%struct.sk_buff*)*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.digital_atr_req = type { i32* }
%struct.digital_atr_res = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i32 0, align 4
@DIGITAL_CMD_ATR_RES = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_TG_MAX_WT = common dso_local global i32 0, align 4
@DIGITAL_PAYLOAD_SIZE_MAX = common dso_local global i32 0, align 4
@DIGITAL_GB_BIT = common dso_local global i32 0, align 4
@digital_tg_send_atr_res_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_atr_req*)* @digital_tg_send_atr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_atr_res(%struct.nfc_digital_dev* %0, %struct.digital_atr_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.digital_atr_req*, align 8
  %6 = alloca %struct.digital_atr_res*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.digital_atr_req* %1, %struct.digital_atr_req** %5, align 8
  %12 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %13 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @nfc_get_local_general_bytes(i32 %14, i64* %10)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 24, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %20, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %105

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %31, i64 24)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.digital_atr_res*
  store %struct.digital_atr_res* %36, %struct.digital_atr_res** %6, align 8
  %37 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %38 = call i32 @memset(%struct.digital_atr_res* %37, i32 0, i32 24)
  %39 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 4
  %40 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %41 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DIGITAL_CMD_ATR_RES, align 4
  %43 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %44 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %46 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.digital_atr_req*, %struct.digital_atr_req** %5, align 8
  %49 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @memcpy(i32 %47, i32* %50, i64 8)
  %52 = load i32, i32* @DIGITAL_NFC_DEP_TG_MAX_WT, align 4
  %53 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %54 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @DIGITAL_PAYLOAD_SIZE_MAX, align 4
  %56 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %57 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %59 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @digital_payload_size_to_bits(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @DIGITAL_PAYLOAD_BITS_TO_PP(i32 %62)
  %64 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %65 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %30
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @skb_put(%struct.sk_buff* %69, i64 %70)
  %72 = load i32, i32* @DIGITAL_GB_BIT, align 4
  %73 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %74 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.digital_atr_res*, %struct.digital_atr_res** %6, align 8
  %78 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @memcpy(i32 %79, i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %68, %30
  %84 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %84, %struct.sk_buff* %85)
  %87 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %88 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %87, i32 0, i32 1
  %89 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 %89(%struct.sk_buff* %90)
  %92 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %93 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = load i32, i32* @digital_tg_send_atr_res_complete, align 4
  %97 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %94, %struct.sk_buff* %95, i32 999, i32 %96, i32* null)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %83
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %100, %83
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32* @nfc_get_local_general_bytes(i32, i64*) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(%struct.digital_atr_res*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @digital_payload_size_to_bits(i32) #1

declare dso_local i32 @DIGITAL_PAYLOAD_BITS_TO_PP(i32) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
