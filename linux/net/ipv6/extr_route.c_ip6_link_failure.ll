; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_link_failure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_link_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rt6_info = type { i32, i32 }
%struct.fib6_info = type { i32 }
%struct.fib6_node = type { i32 }

@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ip6_link_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_link_failure(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %8 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %9 = call i32 @icmpv6_send(%struct.sk_buff* %6, i32 %7, i32 %8, i32 0)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @skb_dst(%struct.sk_buff* %10)
  %12 = inttoptr i64 %11 to %struct.rt6_info*
  store %struct.rt6_info* %12, %struct.rt6_info** %3, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %14 = icmp ne %struct.rt6_info* %13, null
  br i1 %14, label %15, label %56

15:                                               ; preds = %1
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTF_CACHE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %25 = call i32 @rt6_remove_exception_rt(%struct.rt6_info* %24)
  br label %54

26:                                               ; preds = %15
  %27 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %28 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rcu_dereference(i32 %29)
  %31 = bitcast i8* %30 to %struct.fib6_info*
  store %struct.fib6_info* %31, %struct.fib6_info** %4, align 8
  %32 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %33 = icmp ne %struct.fib6_info* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rcu_dereference(i32 %37)
  %39 = bitcast i8* %38 to %struct.fib6_node*
  store %struct.fib6_node* %39, %struct.fib6_node** %5, align 8
  %40 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %41 = icmp ne %struct.fib6_node* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %44 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RTF_DEFAULT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %51 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42, %34
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %23
  %55 = call i32 (...) @rcu_read_unlock()
  br label %56

56:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rt6_remove_exception_rt(%struct.rt6_info*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
