; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ipv4_tuple_to_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ipv4_tuple_to_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CTA_IP_V4_SRC = common dso_local global i32 0, align 4
@CTA_IP_V4_DST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* @ipv4_tuple_to_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_tuple_to_nlattr(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @CTA_IP_V4_SRC, align 4
  %8 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @nla_put_in_addr(%struct.sk_buff* %6, i32 %7, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @CTA_IP_V4_DST, align 4
  %18 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nla_put_in_addr(%struct.sk_buff* %16, i32 %17, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15, %2
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
