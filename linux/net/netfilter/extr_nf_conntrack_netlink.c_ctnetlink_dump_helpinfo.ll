; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_helpinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_helpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 }
%struct.nf_conn.0 = type opaque

@CTA_HELP = common dso_local global i32 0, align 4
@CTA_HELP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_helpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_helpinfo(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %9)
  store %struct.nf_conn_help* %10, %struct.nf_conn_help** %7, align 8
  %11 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %12 = icmp ne %struct.nf_conn_help* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %17)
  store %struct.nf_conntrack_helper* %18, %struct.nf_conntrack_helper** %8, align 8
  %19 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %20 = icmp ne %struct.nf_conntrack_helper* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %55

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @CTA_HELP, align 4
  %25 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %23, i32 %24)
  store %struct.nlattr* %25, %struct.nlattr** %6, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @CTA_HELP_NAME, align 4
  %32 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @nla_put_string(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %39, i32 0, i32 0
  %41 = load i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nf_conn.0*)** %40, align 8
  %42 = icmp ne i32 (%struct.sk_buff*, %struct.nf_conn.0*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %44, i32 0, i32 0
  %46 = load i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nf_conn.0*)** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %49 = bitcast %struct.nf_conn* %48 to %struct.nf_conn.0*
  %50 = call i32 %46(%struct.sk_buff* %47, %struct.nf_conn.0* %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %54 = call i32 @nla_nest_end(%struct.sk_buff* %52, %struct.nlattr* %53)
  br label %55

55:                                               ; preds = %51, %21
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %37, %28
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
