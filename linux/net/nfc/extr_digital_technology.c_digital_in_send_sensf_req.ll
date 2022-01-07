; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sensf_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sensf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.digital_sensf_req = type { i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i64 }

@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENSF_REQ = common dso_local global i32 0, align 4
@digital_in_recv_sensf_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_send_sensf_req(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.digital_sensf_req*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %11 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %20 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %21 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCF, align 4
  %22 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %18
  store i32 24, i32* %9, align 4
  %28 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @skb_put(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.digital_sensf_req*
  store %struct.digital_sensf_req* %43, %struct.digital_sensf_req** %6, align 8
  %44 = load i32, i32* @DIGITAL_CMD_SENSF_REQ, align 4
  %45 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %6, align 8
  %46 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %6, align 8
  %48 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %47, i32 0, i32 0
  store i32 255, i32* %48, align 8
  %49 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %6, align 8
  %50 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %49, i32 0, i32 1
  store i32 255, i32* %50, align 4
  %51 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %6, align 8
  %52 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %51, i32 0, i32 3
  store i32 0, i32* %52, align 8
  %53 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %6, align 8
  %54 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i64 @skb_push(%struct.sk_buff* %57, i32 1)
  %59 = inttoptr i64 %58 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %61 = call i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %36
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @digital_skb_add_crc_f(%struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %63, %36
  %67 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i32, i32* @digital_in_recv_sensf_res, align 4
  %70 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %67, %struct.sk_buff* %68, i32 30, i32 %69, i32* null)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %33, %25, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_IN_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_add_crc_f(%struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
