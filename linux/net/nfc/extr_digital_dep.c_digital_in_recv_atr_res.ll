; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_atr_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_atr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i32, i64, i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfc_target = type { i32 }
%struct.digital_atr_res = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@EIO = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_IN_MAX_WT = common dso_local global i64 0, align 8
@digital_rwt_map = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_424F = common dso_local global i64 0, align 8
@NFC_COMM_ACTIVE = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_atr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_atr_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.digital_atr_res*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.nfc_target*
  store %struct.nfc_target* %14, %struct.nfc_target** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.sk_buff* %19)
  store i32 %20, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %134

21:                                               ; preds = %3
  %22 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %23 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %22, i32 0, i32 0
  %24 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 %24(%struct.sk_buff* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %134

31:                                               ; preds = %21
  %32 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %134

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 12
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %134

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 12
  store i64 %53, i64* %9, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.digital_atr_res*
  store %struct.digital_atr_res* %57, %struct.digital_atr_res** %8, align 8
  %58 = load %struct.digital_atr_res*, %struct.digital_atr_res** %8, align 8
  %59 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @DIGITAL_ATR_RES_TO_WT(i32 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @DIGITAL_NFC_DEP_IN_MAX_WT, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i64, i64* @DIGITAL_NFC_DEP_IN_MAX_WT, align 8
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i32*, i32** @digital_rwt_map, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %73 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.digital_atr_res*, %struct.digital_atr_res** %8, align 8
  %75 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @DIGITAL_PAYLOAD_PP_TO_BITS(i32 %76)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @digital_payload_bits_to_size(i64 %78)
  %80 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %81 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %83 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %67
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %134

89:                                               ; preds = %67
  %90 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %91 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.digital_atr_res*, %struct.digital_atr_res** %8, align 8
  %94 = getelementptr inbounds %struct.digital_atr_res, %struct.digital_atr_res* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @nfc_set_remote_general_bytes(i32 %92, i32 %95, i64 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %134

101:                                              ; preds = %89
  %102 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %103 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %110 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NFC_DIGITAL_RF_TECH_424F, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %116 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %117 = call i32 @digital_in_send_psl_req(%struct.nfc_digital_dev* %115, %struct.nfc_target* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %134

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %108, %101
  %123 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %124 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %127 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NFC_COMM_ACTIVE, align 4
  %130 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %131 = call i32 @nfc_dep_link_is_up(i32 %125, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %133 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %122, %120, %100, %86, %45, %37, %29, %18
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call i32 @dev_kfree_skb(%struct.sk_buff* %135)
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %141 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %134
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i64 @DIGITAL_ATR_RES_TO_WT(i32) #1

declare dso_local i64 @DIGITAL_PAYLOAD_PP_TO_BITS(i32) #1

declare dso_local i32 @digital_payload_bits_to_size(i64) #1

declare dso_local i32 @nfc_set_remote_general_bytes(i32, i32, i64) #1

declare dso_local i32 @digital_in_send_psl_req(%struct.nfc_digital_dev*, %struct.nfc_target*) #1

declare dso_local i32 @nfc_dep_link_is_up(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
