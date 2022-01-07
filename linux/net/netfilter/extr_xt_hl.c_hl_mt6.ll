; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hl.c_hl_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hl.c_hl_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ip6t_hl_info* }
%struct.ip6t_hl_info = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hl_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ip6t_hl_info*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %9, align 8
  store %struct.ip6t_hl_info* %10, %struct.ip6t_hl_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %11)
  store %struct.ipv6hdr* %12, %struct.ipv6hdr** %7, align 8
  %13 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %6, align 8
  %14 = getelementptr inbounds %struct.ip6t_hl_info, %struct.ip6t_hl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %52 [
    i32 131, label %16
    i32 128, label %25
    i32 129, label %34
    i32 130, label %43
  ]

16:                                               ; preds = %2
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %6, align 8
  %21 = getelementptr inbounds %struct.ip6t_hl_info, %struct.ip6t_hl_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %6, align 8
  %30 = getelementptr inbounds %struct.ip6t_hl_info, %struct.ip6t_hl_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %6, align 8
  %39 = getelementptr inbounds %struct.ip6t_hl_info, %struct.ip6t_hl_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %45 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip6t_hl_info*, %struct.ip6t_hl_info** %6, align 8
  %48 = getelementptr inbounds %struct.ip6t_hl_info, %struct.ip6t_hl_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %43, %34, %25, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
