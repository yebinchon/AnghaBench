; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@CTA_TUPLE_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* @ctnetlink_dump_tuples_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @CTA_TUPLE_IP, align 4
  %10 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %8, i32 %9)
  store %struct.nlattr* %10, %struct.nlattr** %7, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %22 = call i32 @ipv4_tuple_to_nlattr(%struct.sk_buff* %20, %struct.nf_conntrack_tuple* %21)
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %26 = call i32 @ipv6_tuple_to_nlattr(%struct.sk_buff* %24, %struct.nf_conntrack_tuple* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %14, %23, %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %30 = call i32 @nla_nest_end(%struct.sk_buff* %28, %struct.nlattr* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv4_tuple_to_nlattr(%struct.sk_buff*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @ipv6_tuple_to_nlattr(%struct.sk_buff*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
