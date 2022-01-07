; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_utils.c_nf_reroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_utils.c_nf_reroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_queue_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_ipv6_ops = type { i32 (%struct.sk_buff*, %struct.nf_queue_entry*)* }

@nf_ipv6_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_reroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca %struct.nf_ipv6_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %8 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %28 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %14 = call i32 @nf_ip_reroute(%struct.sk_buff* %12, %struct.nf_queue_entry* %13)
  store i32 %14, i32* %6, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @nf_ipv6_ops, align 4
  %17 = call %struct.nf_ipv6_ops* @rcu_dereference(i32 %16)
  store %struct.nf_ipv6_ops* %17, %struct.nf_ipv6_ops** %5, align 8
  %18 = load %struct.nf_ipv6_ops*, %struct.nf_ipv6_ops** %5, align 8
  %19 = icmp ne %struct.nf_ipv6_ops* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.nf_ipv6_ops*, %struct.nf_ipv6_ops** %5, align 8
  %22 = getelementptr inbounds %struct.nf_ipv6_ops, %struct.nf_ipv6_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.sk_buff*, %struct.nf_queue_entry*)*, i32 (%struct.sk_buff*, %struct.nf_queue_entry*)** %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %26 = call i32 %23(%struct.sk_buff* %24, %struct.nf_queue_entry* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %15
  br label %28

28:                                               ; preds = %2, %27, %11
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @nf_ip_reroute(%struct.sk_buff*, %struct.nf_queue_entry*) #1

declare dso_local %struct.nf_ipv6_ops* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
