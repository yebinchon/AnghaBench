; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_mc_finish_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_mc_finish_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtable = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ip_mc_finish_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_finish_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i32 @BPF_CGROUP_RUN_PROG_INET_EGRESS(%struct.sock* %12, %struct.sk_buff* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %3, %16
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @kfree_skb(%struct.sk_buff* %19)
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %17
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @skb_rtable(%struct.sk_buff* %26)
  %28 = call %struct.rtable* @rt_dst_clone(i32 %25, i32 %27)
  store %struct.rtable* %28, %struct.rtable** %8, align 8
  %29 = load %struct.rtable*, %struct.rtable** %8, align 8
  %30 = icmp ne %struct.rtable* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.rtable*, %struct.rtable** %8, align 8
  %33 = getelementptr inbounds %struct.rtable, %struct.rtable* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @skb_dst_drop(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.rtable*, %struct.rtable** %8, align 8
  %38 = getelementptr inbounds %struct.rtable, %struct.rtable* %37, i32 0, i32 0
  %39 = call i32 @skb_dst_set(%struct.sk_buff* %36, i32* %38)
  br label %40

40:                                               ; preds = %31, %22
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @dev_loopback_xmit(%struct.net* %41, %struct.sock* %42, %struct.sk_buff* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  br label %54

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @BPF_CGROUP_RUN_PROG_INET_EGRESS(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @rt_dst_clone(i32, i32) #1

declare dso_local i32 @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_loopback_xmit(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
