; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sel_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.digital_sdd_res = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.digital_sel_req = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL1 = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL2 = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL3 = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_STANDARD_WITH_CRC_A = common dso_local global i32 0, align 4
@digital_in_recv_sel_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.nfc_target*, %struct.digital_sdd_res*)* @digital_in_send_sel_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_sel_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1, %struct.digital_sdd_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_digital_dev*, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca %struct.digital_sdd_res*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.digital_sel_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %5, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %6, align 8
  store %struct.digital_sdd_res* %2, %struct.digital_sdd_res** %7, align 8
  %12 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %13 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %12, i32 16)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i32 @skb_put(%struct.sk_buff* %20, i32 16)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.digital_sel_req*
  store %struct.digital_sel_req* %25, %struct.digital_sel_req** %9, align 8
  %26 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %27 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL1, align 4
  store i32 %31, i32* %10, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %34 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL2, align 4
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL3, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.digital_sel_req*, %struct.digital_sel_req** %9, align 8
  %45 = getelementptr inbounds %struct.digital_sel_req, %struct.digital_sel_req* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.digital_sel_req*, %struct.digital_sel_req** %9, align 8
  %47 = getelementptr inbounds %struct.digital_sel_req, %struct.digital_sel_req* %46, i32 0, i32 0
  store i32 112, i32* %47, align 4
  %48 = load %struct.digital_sel_req*, %struct.digital_sel_req** %9, align 8
  %49 = getelementptr inbounds %struct.digital_sel_req, %struct.digital_sel_req* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %7, align 8
  %52 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %50, i32 %53, i32 4)
  %55 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %7, align 8
  %56 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.digital_sel_req*, %struct.digital_sel_req** %9, align 8
  %59 = getelementptr inbounds %struct.digital_sel_req, %struct.digital_sel_req* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %61 = call i64 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %42
  %64 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %65 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %66 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_STANDARD_WITH_CRC_A, align 4
  %67 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %81

71:                                               ; preds = %63
  br label %75

72:                                               ; preds = %42
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @digital_skb_add_crc_a(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* @digital_in_recv_sel_res, align 4
  %79 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %80 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %76, %struct.sk_buff* %77, i32 30, i32 %78, %struct.nfc_target* %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @digital_skb_add_crc_a(%struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
