; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sdd_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_send_sdd_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.digital_sdd_res = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_STANDARD_WITH_CRC_A = common dso_local global i32 0, align 4
@digital_tg_recv_sel_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*)* @digital_tg_send_sdd_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_sdd_res(%struct.nfc_digital_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_digital_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.digital_sdd_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %3, align 8
  %8 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %9 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %8, i32 16)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_put(%struct.sk_buff* %16, i32 16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.digital_sdd_res*
  store %struct.digital_sdd_res* %21, %struct.digital_sdd_res** %5, align 8
  %22 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %5, align 8
  %23 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 8, i32* %25, align 4
  %26 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %5, align 8
  %27 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @get_random_bytes(i32* %29, i32 3)
  %31 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %5, align 8
  %32 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %48, %15
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %5, align 8
  %38 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.digital_sdd_res*, %struct.digital_sdd_res** %5, align 8
  %45 = getelementptr inbounds %struct.digital_sdd_res, %struct.digital_sdd_res* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %53 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %54 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_STANDARD_WITH_CRC_A, align 4
  %55 = call i32 @digital_tg_configure_hw(%struct.nfc_digital_dev* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %74

62:                                               ; preds = %51
  %63 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* @digital_tg_recv_sel_req, align 4
  %66 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %63, %struct.sk_buff* %64, i32 300, i32 %65, i32* null)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %58, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @digital_tg_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
