; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_psl_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_psl_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i64, i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.digital_psl_res = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i32 0, align 4
@DIGITAL_CMD_PSL_RES = common dso_local global i32 0, align 4
@digital_tg_send_psl_res_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i64, i64)* @digital_tg_send_psl_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_tg_send_psl_res(%struct.nfc_digital_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_digital_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.digital_psl_res*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %12 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %11, i32 16)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call i32 @skb_put(%struct.sk_buff* %19, i32 16)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.digital_psl_res*
  store %struct.digital_psl_res* %24, %struct.digital_psl_res** %8, align 8
  %25 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 4
  %26 = load %struct.digital_psl_res*, %struct.digital_psl_res** %8, align 8
  %27 = getelementptr inbounds %struct.digital_psl_res, %struct.digital_psl_res* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DIGITAL_CMD_PSL_RES, align 4
  %29 = load %struct.digital_psl_res*, %struct.digital_psl_res** %8, align 8
  %30 = getelementptr inbounds %struct.digital_psl_res, %struct.digital_psl_res* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.digital_psl_res*, %struct.digital_psl_res** %8, align 8
  %33 = getelementptr inbounds %struct.digital_psl_res, %struct.digital_psl_res* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %34, %struct.sk_buff* %35)
  %37 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %38 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %37, i32 0, i32 1
  %39 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 %39(%struct.sk_buff* %40)
  %42 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %43 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i32, i32* @digital_tg_send_psl_res_complete, align 4
  %47 = load i64, i64* %7, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %44, %struct.sk_buff* %45, i32 0, i32 %46, i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %18
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %52, %18
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
