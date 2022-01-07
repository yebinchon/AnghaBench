; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sensb_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sensb_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.digital_sensb_req = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106B = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENSB_REQ = common dso_local global i32 0, align 4
@digital_in_recv_sensb_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_send_sensb_req(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.digital_sensb_req*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %10 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %11 = load i32, i32* @NFC_DIGITAL_RF_TECH_106B, align 4
  %12 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %19 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %20 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCB, align 4
  %21 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %17
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %28 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %27, i32 12)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.digital_sensb_req* @skb_put(%struct.sk_buff* %35, i32 12)
  store %struct.digital_sensb_req* %36, %struct.digital_sensb_req** %6, align 8
  %37 = load i32, i32* @DIGITAL_CMD_SENSB_REQ, align 4
  %38 = load %struct.digital_sensb_req*, %struct.digital_sensb_req** %6, align 8
  %39 = getelementptr inbounds %struct.digital_sensb_req, %struct.digital_sensb_req* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.digital_sensb_req*, %struct.digital_sensb_req** %6, align 8
  %41 = getelementptr inbounds %struct.digital_sensb_req, %struct.digital_sensb_req* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = call i32 @DIGITAL_SENSB_N(i32 0)
  %43 = load %struct.digital_sensb_req*, %struct.digital_sensb_req** %6, align 8
  %44 = getelementptr inbounds %struct.digital_sensb_req, %struct.digital_sensb_req* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* @digital_in_recv_sensb_res, align 4
  %48 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %45, %struct.sk_buff* %46, i32 30, i32 %47, i32* null)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51, %34
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %31, %24, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local %struct.digital_sensb_req* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_SENSB_N(i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
