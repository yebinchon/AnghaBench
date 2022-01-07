; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_nop.c_llc_nop_xmit_from_hci.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_nop.c_llc_nop_xmit_from_hci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_nop = type { i32 (i32, %struct.sk_buff*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_llc*, %struct.sk_buff*)* @llc_nop_xmit_from_hci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_nop_xmit_from_hci(%struct.nfc_llc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_nop*, align 8
  store %struct.nfc_llc* %0, %struct.nfc_llc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.nfc_llc*, %struct.nfc_llc** %3, align 8
  %7 = call %struct.llc_nop* @nfc_llc_get_data(%struct.nfc_llc* %6)
  store %struct.llc_nop* %7, %struct.llc_nop** %5, align 8
  %8 = load %struct.llc_nop*, %struct.llc_nop** %5, align 8
  %9 = getelementptr inbounds %struct.llc_nop, %struct.llc_nop* %8, i32 0, i32 0
  %10 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %9, align 8
  %11 = load %struct.llc_nop*, %struct.llc_nop** %5, align 8
  %12 = getelementptr inbounds %struct.llc_nop, %struct.llc_nop* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 %10(i32 %13, %struct.sk_buff* %14)
  ret i32 %15
}

declare dso_local %struct.llc_nop* @nfc_llc_get_data(%struct.nfc_llc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
