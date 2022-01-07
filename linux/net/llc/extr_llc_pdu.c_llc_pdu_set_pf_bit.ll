; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_set_pf_bit.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_set_pf_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_pdu_set_pf_bit(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @llc_pdu_decode_pdu_type(%struct.sk_buff* %7, i32* %5)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %9)
  store %struct.llc_pdu_sn* %10, %struct.llc_pdu_sn** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %33 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %21
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %14 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 254
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %20 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %23 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 239
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 4
  %28 = or i32 %25, %27
  %29 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %30 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %2, %21, %12
  ret void
}

declare dso_local i32 @llc_pdu_decode_pdu_type(%struct.sk_buff*, i32*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
