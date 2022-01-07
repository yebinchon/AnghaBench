; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_decode_pf_bit.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_decode_pf_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32, i32 }

@LLC_S_PF_BIT_MASK = common dso_local global i32 0, align 4
@LLC_U_PF_BIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_pdu_decode_pf_bit(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @llc_pdu_decode_pdu_type(%struct.sk_buff* %7, i32* %5)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %9)
  store %struct.llc_pdu_sn* %10, %struct.llc_pdu_sn** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %27 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %14 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LLC_S_PF_BIT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %21 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LLC_U_PF_BIT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %2, %19, %12
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
