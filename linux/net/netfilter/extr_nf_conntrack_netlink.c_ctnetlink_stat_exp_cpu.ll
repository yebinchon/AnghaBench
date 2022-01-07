; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_exp_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_exp_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netlink_dump_control = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@ctnetlink_exp_stat_cpu_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_stat_exp_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_stat_exp_cpu(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.netlink_dump_control, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NLM_F_DUMP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %14, i32 0, i32 0
  %23 = load i32, i32* @ctnetlink_exp_stat_cpu_dump, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %27 = call i32 @netlink_dump_start(%struct.sock* %24, %struct.sk_buff* %25, %struct.nlmsghdr* %26, %struct.netlink_dump_control* %14)
  store i32 %27, i32* %7, align 4
  br label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
