; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_skb_push_dep_sod.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_skb_push_dep_sod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i64 }
%struct.sk_buff = type { i32, i32* }

@NFC_DIGITAL_RF_TECH_106A = common dso_local global i64 0, align 8
@DIGITAL_NFC_DEP_NFCA_SOD_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, %struct.sk_buff*)* @digital_skb_push_dep_sod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_digital_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call i64 @skb_push(%struct.sk_buff* %5, i32 4)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFC_DIGITAL_RF_TECH_106A, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @DIGITAL_NFC_DEP_NFCA_SOD_SB, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_push(%struct.sk_buff* %21, i32 4)
  %23 = inttoptr i64 %22 to i32*
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %2
  ret void
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
