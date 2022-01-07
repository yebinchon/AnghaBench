; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_psl_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_psl_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfc_target = type { i32 }
%struct.digital_psl_res = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i64 0, align 8
@DIGITAL_CMD_PSL_RES = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_424F = common dso_local global i64 0, align 8
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCF_NFC_DEP = common dso_local global i64 0, align 8
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i64 0, align 8
@digital_skb_add_crc_f = common dso_local global i32 0, align 4
@NFC_COMM_ACTIVE = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_psl_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_psl_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.digital_psl_res*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfc_target*
  store %struct.nfc_target* %11, %struct.nfc_target** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @IS_ERR(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %108

18:                                               ; preds = %3
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %20 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 %21(%struct.sk_buff* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %108

28:                                               ; preds = %18
  %29 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %108

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.digital_psl_res*
  store %struct.digital_psl_res* %40, %struct.digital_psl_res** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 16
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = load %struct.digital_psl_res*, %struct.digital_psl_res** %8, align 8
  %48 = getelementptr inbounds %struct.digital_psl_res, %struct.digital_psl_res* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.digital_psl_res*, %struct.digital_psl_res** %8, align 8
  %54 = getelementptr inbounds %struct.digital_psl_res, %struct.digital_psl_res* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DIGITAL_CMD_PSL_RES, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46, %36
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %108

61:                                               ; preds = %52
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %63 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %64 = load i64, i64* @NFC_DIGITAL_RF_TECH_424F, align 8
  %65 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %62, i32 %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %108

69:                                               ; preds = %61
  %70 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %71 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %72 = load i64, i64* @NFC_DIGITAL_FRAMING_NFCF_NFC_DEP, align 8
  %73 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %70, i32 %71, i64 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %108

77:                                               ; preds = %69
  %78 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %79 = call i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %83 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NFC_DIGITAL_RF_TECH_106A, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* @digital_skb_add_crc_f, align 4
  %89 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %90 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %92 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %91, i32 0, i32 0
  store i32 (%struct.sk_buff*)* @digital_skb_check_crc_f, i32 (%struct.sk_buff*)** %92, align 8
  br label %93

93:                                               ; preds = %87, %81, %77
  %94 = load i64, i64* @NFC_DIGITAL_RF_TECH_424F, align 8
  %95 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %96 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %98 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %101 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NFC_COMM_ACTIVE, align 4
  %104 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %105 = call i32 @nfc_dep_link_is_up(i32 %99, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %107 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %93, %76, %68, %58, %34, %26, %15
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @dev_kfree_skb(%struct.sk_buff* %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %115 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i64) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_check_crc_f(%struct.sk_buff*) #1

declare dso_local i32 @nfc_dep_link_is_up(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
