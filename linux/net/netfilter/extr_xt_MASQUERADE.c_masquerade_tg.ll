; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_MASQUERADE.c_masquerade_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_MASQUERADE.c_masquerade_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.nf_nat_ipv4_multi_range_compat* }
%struct.nf_nat_ipv4_multi_range_compat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nf_nat_range2 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @masquerade_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @masquerade_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.nf_nat_range2, align 4
  %6 = alloca %struct.nf_nat_ipv4_multi_range_compat*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %8, align 8
  store %struct.nf_nat_ipv4_multi_range_compat* %9, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %10 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %11 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %18 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  %25 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %33 = call i32 @xt_hooknum(%struct.xt_action_param* %32)
  %34 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %35 = call i32 @xt_out(%struct.xt_action_param* %34)
  %36 = call i32 @nf_nat_masquerade_ipv4(%struct.sk_buff* %31, i32 %33, %struct.nf_nat_range2* %5, i32 %35)
  ret i32 %36
}

declare dso_local i32 @nf_nat_masquerade_ipv4(%struct.sk_buff*, i32, %struct.nf_nat_range2*, i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @xt_out(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
