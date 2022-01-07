; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_atr_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_atr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i64* }
%struct.digital_atr_req = type { i64, i64, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_NFCA_SOD_SB = common dso_local global i64 0, align 8
@DIGITAL_ATR_REQ_MIN_SIZE = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_212F = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i64 0, align 8
@DIGITAL_CMD_ATR_REQ = common dso_local global i64 0, align 8
@DIGITAL_DID_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @digital_tg_recv_atr_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.digital_atr_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @IS_ERR(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.sk_buff* %17)
  store i32 %18, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %167

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %167

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DIGITAL_NFC_DEP_NFCA_SOD_SB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @DIGITAL_ATR_REQ_MIN_SIZE, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %40 = load i32, i32* @NFC_DIGITAL_RF_TECH_106A, align 4
  %41 = call i32 @digital_tg_set_rf_tech(%struct.nfc_digital_dev* %39, i32 %40)
  br label %49

42:                                               ; preds = %27
  %43 = load i32, i32* @DIGITAL_ATR_REQ_MIN_SIZE, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %47 = load i32, i32* @NFC_DIGITAL_RF_TECH_212F, align 4
  %48 = call i32 @digital_tg_set_rf_tech(%struct.nfc_digital_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %167

58:                                               ; preds = %49
  %59 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %60 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %61 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %63 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %62, i32 0, i32 0
  %64 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 %64(%struct.sk_buff* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %167

71:                                               ; preds = %58
  %72 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %72, %struct.sk_buff* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %167

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = bitcast i64* %82 to %struct.digital_atr_req*
  store %struct.digital_atr_req* %83, %struct.digital_atr_req** %8, align 8
  %84 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %85 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %79
  %90 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %91 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DIGITAL_CMD_ATR_REQ, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %97 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DIGITAL_DID_MAX, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %89, %79
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %167

104:                                              ; preds = %95
  %105 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %106 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DIGITAL_PAYLOAD_PP_TO_BITS(i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @digital_payload_bits_to_size(i32 %109)
  %111 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %112 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %114 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %104
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %167

120:                                              ; preds = %104
  %121 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %122 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %125 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %127 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %128 = load i32, i32* @NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED, align 4
  %129 = call i32 @digital_tg_configure_hw(%struct.nfc_digital_dev* %126, i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %167

133:                                              ; preds = %120
  %134 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %135 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %136 = call i32 @digital_tg_send_atr_res(%struct.nfc_digital_dev* %134, %struct.digital_atr_req* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %167

140:                                              ; preds = %133
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %143, 32
  store i64 %144, i64* %9, align 8
  %145 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %146 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %11, align 4
  %148 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %149 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %148, i32 0, i32 2
  store i32 0, i32* %149, align 8
  %150 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %151 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %154 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %155 = load %struct.digital_atr_req*, %struct.digital_atr_req** %8, align 8
  %156 = getelementptr inbounds %struct.digital_atr_req, %struct.digital_atr_req* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @nfc_tm_activated(i32 %152, i32 %153, i32 %154, i32 %157, i64 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %140
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %165 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  br label %167

166:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %162, %139, %132, %117, %101, %77, %69, %55, %24, %16
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %172 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = call i32 @dev_kfree_skb(%struct.sk_buff* %174)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_set_rf_tech(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_PAYLOAD_PP_TO_BITS(i32) #1

declare dso_local i32 @digital_payload_bits_to_size(i32) #1

declare dso_local i32 @digital_tg_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @digital_tg_send_atr_res(%struct.nfc_digital_dev*, %struct.digital_atr_req*) #1

declare dso_local i32 @nfc_tm_activated(i32, i32, i32, i32, i64) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
