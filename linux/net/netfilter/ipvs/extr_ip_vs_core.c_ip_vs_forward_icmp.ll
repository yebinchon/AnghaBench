; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_forward_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_forward_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.netns_ipvs = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_ICMP = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @ip_vs_forward_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_forward_icmp(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netns_ipvs*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %10 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %11 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.netns_ipvs* @net_ipvs(i32 %12)
  store %struct.netns_ipvs* %13, %struct.netns_ipvs** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_ICMP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %24 = call i64 @sysctl_backup_only(%struct.netns_ipvs* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %28 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ true, %22 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %32
  %40 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %43 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ip_vs_in_icmp(%struct.netns_ipvs* %40, %struct.sk_buff* %41, i32* %8, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %37, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.netns_ipvs* @net_ipvs(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sysctl_backup_only(%struct.netns_ipvs*) #1

declare dso_local i32 @ip_vs_in_icmp(%struct.netns_ipvs*, %struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
