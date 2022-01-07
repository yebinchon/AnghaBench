; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_tunnel.c___encap_gre_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_tunnel.c___encap_gre_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__encap_gre_mpls(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %4 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %5 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @ETH_P_IP, align 4
  %8 = call i64 @__bpf_constant_htons(i32 %7)
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = load i32, i32* @IPPROTO_GRE, align 4
  %13 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %14 = call i32 @encap_ipv4(%struct.__sk_buff* %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @__bpf_constant_htons(i32) #1

declare dso_local i32 @encap_ipv4(%struct.__sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
