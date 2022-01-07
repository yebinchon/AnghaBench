; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_atr_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_atr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i64 }
%struct.nfc_target = type { i32, i64 }
%struct.digital_atr_req = type { i32, i64, i64, i64, i32, i32, i32 }

@DIGITAL_ATR_REQ_MIN_SIZE = common dso_local global i64 0, align 8
@DIGITAL_ATR_REQ_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"14.6.1.1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i32 0, align 4
@DIGITAL_CMD_ATR_REQ = common dso_local global i32 0, align 4
@NFC_NFCID2_MAXSIZE = common dso_local global i32 0, align 4
@NFC_NFCID3_MAXSIZE = common dso_local global i32 0, align 4
@DIGITAL_PAYLOAD_SIZE_MAX = common dso_local global i32 0, align 4
@DIGITAL_GB_BIT = common dso_local global i32 0, align 4
@DIGITAL_ATR_RES_RWT = common dso_local global i32 0, align 4
@digital_in_recv_atr_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_send_atr_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.digital_atr_req*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* @DIGITAL_ATR_REQ_MIN_SIZE, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = load i64, i64* @DIGITAL_ATR_REQ_MAX_SIZE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %122

27:                                               ; preds = %5
  %28 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %28, i64 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %122

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call i32 @skb_put(%struct.sk_buff* %37, i32 48)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.digital_atr_req*
  store %struct.digital_atr_req* %42, %struct.digital_atr_req** %13, align 8
  %43 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %44 = call i32 @memset(%struct.digital_atr_req* %43, i32 0, i32 48)
  %45 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 4
  %46 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %47 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @DIGITAL_CMD_ATR_REQ, align 4
  %49 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %50 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %52 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %36
  %56 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %57 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %60 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NFC_NFCID2_MAXSIZE, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  br label %70

64:                                               ; preds = %36
  %65 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %66 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NFC_NFCID3_MAXSIZE, align 4
  %69 = call i32 @get_random_bytes(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %72 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %74 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %76 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @DIGITAL_PAYLOAD_SIZE_MAX, align 4
  %78 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %79 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %81 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @digital_payload_size_to_bits(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @DIGITAL_PAYLOAD_BITS_TO_PP(i32 %84)
  %86 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %87 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %70
  %91 = load i32, i32* @DIGITAL_GB_BIT, align 4
  %92 = load %struct.digital_atr_req*, %struct.digital_atr_req** %13, align 8
  %93 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @skb_put_data(%struct.sk_buff* %96, i32* %97, i64 %98)
  br label %100

100:                                              ; preds = %90, %70
  %101 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %101, %struct.sk_buff* %102)
  %104 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %105 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %104, i32 0, i32 0
  %106 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %108 = call i32 %106(%struct.sk_buff* %107)
  %109 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load i32, i32* @DIGITAL_ATR_RES_RWT, align 4
  %112 = load i32, i32* @digital_in_recv_atr_res, align 4
  %113 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %114 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %109, %struct.sk_buff* %110, i32 %111, i32 %112, %struct.nfc_target* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %119 = call i32 @kfree_skb(%struct.sk_buff* %118)
  br label %120

120:                                              ; preds = %117, %100
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %33, %23
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.digital_atr_req*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @digital_payload_size_to_bits(i32) #1

declare dso_local i32 @DIGITAL_PAYLOAD_BITS_TO_PP(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
