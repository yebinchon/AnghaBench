; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_push_frag_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_push_frag_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.brnf_frag_data = type { i32, i32, i32, i32, i64 }

@brnf_frag_data_storage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @br_nf_push_frag_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_push_frag_xmit(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.brnf_frag_data*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = call %struct.brnf_frag_data* @this_cpu_ptr(i32* @brnf_frag_data_storage)
  store %struct.brnf_frag_data* %10, %struct.brnf_frag_data** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %13 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @skb_cow_head(%struct.sk_buff* %11, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @kfree_skb(%struct.sk_buff* %19)
  store i32 0, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %23 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %29 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %32 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %27, i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %38 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %42 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %45 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %36, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.brnf_frag_data*, %struct.brnf_frag_data** %8, align 8
  %50 = getelementptr inbounds %struct.brnf_frag_data, %struct.brnf_frag_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @__skb_push(%struct.sk_buff* %48, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @nf_bridge_info_free(%struct.sk_buff* %53)
  %55 = load %struct.net*, %struct.net** %5, align 8
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @br_dev_queue_push_xmit(%struct.net* %55, %struct.sock* %56, %struct.sk_buff* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %35, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.brnf_frag_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_bridge_info_free(%struct.sk_buff*) #1

declare dso_local i32 @br_dev_queue_push_xmit(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
