; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_init_as_dm_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_init_as_dm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_un = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_2_PDU_RSP_DM = common dso_local global i32 0, align 4
@LLC_U_PF_BIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_pdu_init_as_dm_rsp(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %6)
  store %struct.llc_pdu_un* %7, %struct.llc_pdu_un** %5, align 8
  %8 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %9 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %10 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @LLC_2_PDU_RSP_DM, align 4
  %12 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %13 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 4
  %19 = load i32, i32* @LLC_U_PF_BIT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %22 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
