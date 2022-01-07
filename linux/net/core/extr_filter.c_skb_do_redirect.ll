; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_skb_do_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_skb_do_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bpf_redirect_info = type { i32, i64 }
%struct.net_device = type { i32 }

@bpf_redirect_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_do_redirect(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bpf_redirect_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = call %struct.bpf_redirect_info* @this_cpu_ptr(i32* @bpf_redirect_info)
  store %struct.bpf_redirect_info* %6, %struct.bpf_redirect_info** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_net(i32 %9)
  %11 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.net_device* @dev_get_by_index_rcu(i32 %10, i64 %13)
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__bpf_redirect(%struct.sk_buff* %29, %struct.net_device* %30, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.bpf_redirect_info* @this_cpu_ptr(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i64) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__bpf_redirect(%struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
