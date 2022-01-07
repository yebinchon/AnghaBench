; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_init_as_i_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_init_as_i_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32, i32 }

@LLC_PDU_TYPE_I = common dso_local global i32 0, align 4
@LLC_I_PF_BIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_pdu_init_as_i_cmd(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %10)
  store %struct.llc_pdu_sn* %11, %struct.llc_pdu_sn** %9, align 8
  %12 = load i32, i32* @LLC_PDU_TYPE_I, align 4
  %13 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %14 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %16 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LLC_I_PF_BIT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %21 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 1
  %26 = and i32 %25, 254
  %27 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %28 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 1
  %33 = and i32 %32, 254
  %34 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %35 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  ret void
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
