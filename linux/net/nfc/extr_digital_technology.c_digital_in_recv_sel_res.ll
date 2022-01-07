; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sel_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sel_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i64, i32* }
%struct.nfc_target = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"4.4.1.3\00", align 1
@DIGITAL_SEL_RES_LEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_sel_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_sel_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.nfc_target*
  store %struct.nfc_target* %12, %struct.nfc_target** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @IS_ERR(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.sk_buff* %17)
  store i32 %18, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %93

19:                                               ; preds = %3
  %20 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %21 = call i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @digital_skb_check_crc_a(%struct.sk_buff* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %93

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DIGITAL_SEL_RES_LEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %93

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DIGITAL_SEL_RES_NFCID1_COMPLETE(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %51 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %52 = call i32 @digital_in_send_sdd_req(%struct.nfc_digital_dev* %50, %struct.nfc_target* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %93

56:                                               ; preds = %49
  br label %96

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %60 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @DIGITAL_SEL_RES_IS_T2T(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @NFC_PROTO_MIFARE, align 4
  store i32 %65, i32* %10, align 4
  br label %88

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @DIGITAL_SEL_RES_IS_NFC_DEP(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  store i32 %71, i32* %10, align 4
  br label %87

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @DIGITAL_SEL_RES_IS_T4T(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %78 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %79 = call i32 @digital_in_send_rats(%struct.nfc_digital_dev* %77, %struct.nfc_target* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %93

83:                                               ; preds = %76
  br label %96

84:                                               ; preds = %72
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %93

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %90 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @digital_target_found(%struct.nfc_digital_dev* %89, %struct.nfc_target* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %88, %84, %82, %55, %37, %28, %16
  %94 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %95 = call i32 @kfree(%struct.nfc_target* %94)
  br label %96

96:                                               ; preds = %93, %83, %56
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @dev_kfree_skb(%struct.sk_buff* %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %103 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %102)
  br label %104

104:                                              ; preds = %101, %96
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_check_crc_a(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @DIGITAL_SEL_RES_NFCID1_COMPLETE(i32) #1

declare dso_local i32 @digital_in_send_sdd_req(%struct.nfc_digital_dev*, %struct.nfc_target*) #1

declare dso_local i64 @DIGITAL_SEL_RES_IS_T2T(i32) #1

declare dso_local i64 @DIGITAL_SEL_RES_IS_NFC_DEP(i32) #1

declare dso_local i64 @DIGITAL_SEL_RES_IS_T4T(i32) #1

declare dso_local i32 @digital_in_send_rats(%struct.nfc_digital_dev*, %struct.nfc_target*) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
