; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sdd_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_sdd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.sk_buff = type { i32 }

@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_STANDARD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL1 = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL2 = common dso_local global i32 0, align 4
@DIGITAL_CMD_SEL_REQ_CL3 = common dso_local global i32 0, align 4
@DIGITAL_SDD_REQ_SEL_PAR = common dso_local global i32 0, align 4
@digital_in_recv_sdd_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.nfc_target*)* @digital_in_send_sdd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_sdd_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %5, align 8
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %10 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %11 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_STANDARD, align 4
  %12 = call i32 @digital_in_configure_hw(%struct.nfc_digital_dev* %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %19 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %18, i32 2)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %27 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL1, align 4
  store i32 %31, i32* %8, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %34 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL2, align 4
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @DIGITAL_CMD_SEL_REQ_CL3, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @skb_put_u8(%struct.sk_buff* %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* @DIGITAL_SDD_REQ_SEL_PAR, align 4
  %48 = call i32 @skb_put_u8(%struct.sk_buff* %46, i32 %47)
  %49 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* @digital_in_recv_sdd_res, align 4
  %52 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %53 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %49, %struct.sk_buff* %50, i32 30, i32 %51, %struct.nfc_target* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %42, %22, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @digital_in_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.nfc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
