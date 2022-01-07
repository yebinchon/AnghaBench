; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sensf_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sensf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.nfc_target = type { i64*, i64, i64*, i64 }
%struct.digital_sensf_res = type { %struct.digital_sensf_res* }

@DIGITAL_SENSF_RES_MIN_LENGTH = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"6.4.1.8\00", align 1
@NFC_NFCID2_MAXSIZE = common dso_local global i64 0, align 8
@DIGITAL_SENSF_NFCID2_NFC_DEP_B1 = common dso_local global i64 0, align 8
@DIGITAL_SENSF_NFCID2_NFC_DEP_B2 = common dso_local global i64 0, align 8
@NFC_PROTO_NFC_DEP = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_sensf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_sensf_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfc_target, align 8
  %10 = alloca %struct.digital_sensf_res*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %87

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DIGITAL_SENSF_RES_MIN_LENGTH, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %87

26:                                               ; preds = %17
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %28 = call i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @digital_skb_check_crc_f(%struct.sk_buff* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %87

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_pull(%struct.sk_buff* %39, i32 1)
  %41 = call i32 @memset(%struct.nfc_target* %9, i32 0, i32 32)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.digital_sensf_res*
  store %struct.digital_sensf_res* %45, %struct.digital_sensf_res** %10, align 8
  %46 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %10, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i64* %47, %struct.digital_sensf_res* %48, i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %10, align 8
  %60 = getelementptr inbounds %struct.digital_sensf_res, %struct.digital_sensf_res* %59, i32 0, i32 0
  %61 = load %struct.digital_sensf_res*, %struct.digital_sensf_res** %60, align 8
  %62 = load i64, i64* @NFC_NFCID2_MAXSIZE, align 8
  %63 = call i32 @memcpy(i64* %58, %struct.digital_sensf_res* %61, i64 %62)
  %64 = load i64, i64* @NFC_NFCID2_MAXSIZE, align 8
  %65 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 3
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DIGITAL_SENSF_NFCID2_NFC_DEP_B1, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %38
  %73 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DIGITAL_SENSF_NFCID2_NFC_DEP_B2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  store i32 %80, i32* %8, align 4
  br label %83

81:                                               ; preds = %72, %38
  %82 = load i32, i32* @NFC_PROTO_FELICA, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @digital_target_found(%struct.nfc_digital_dev* %84, %struct.nfc_target* %9, i32 %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %35, %23, %14
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @dev_kfree_skb(%struct.sk_buff* %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %94 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %93)
  br label %95

95:                                               ; preds = %92, %87
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_check_crc_f(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.nfc_target*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, %struct.digital_sensf_res*, i64) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
