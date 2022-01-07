; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sel_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sel_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_SEL_RES_NFC_DEP = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE = common dso_local global i32 0, align 4
@digital_tg_recv_atr_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*)* @digital_tg_send_sel_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_sel_res(%struct.nfc_digital_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_digital_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %3, align 8
  %6 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %7 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %6, i32 1)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @DIGITAL_SEL_RES_NFC_DEP, align 4
  %16 = call i32 @skb_put_u8(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %18 = call i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @digital_skb_add_crc_a(%struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %25 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %26 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE, align 4
  %27 = call i32 @digital_tg_configure_hw(%struct.nfc_digital_dev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %23
  %35 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @digital_tg_recv_atr_req, align 4
  %38 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %35, %struct.sk_buff* %36, i32 300, i32 %37, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %30, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_add_crc_a(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
