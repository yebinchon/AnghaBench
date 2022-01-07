; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sens_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sens_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32 }

@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_SHORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENS_REQ = common dso_local global i32 0, align 4
@digital_in_recv_sens_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_send_sens_req(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %9 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %10 = load i32, i32* @NFC_DIGITAL_RF_TECH_106A, align 4
  %11 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %18 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %19 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_SHORT, align 4
  %20 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %27 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %26, i32 1)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @DIGITAL_CMD_SENS_REQ, align 4
  %36 = call i32 @skb_put_u8(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load i32, i32* @digital_in_recv_sens_res, align 4
  %40 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %37, %struct.sk_buff* %38, i32 30, i32 %39, i32* null)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %30, %23, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
