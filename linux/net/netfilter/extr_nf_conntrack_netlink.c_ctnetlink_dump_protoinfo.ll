; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_protoinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_protoinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)* }
%struct.nlattr = type { i32 }
%struct.nf_conn.0 = type opaque

@CTA_PROTOINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_protoinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_protoinfo(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conntrack_l4proto*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = call i32 @nf_ct_protonum(%struct.nf_conn* %9)
  %11 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %10)
  store %struct.nf_conntrack_l4proto* %11, %struct.nf_conntrack_l4proto** %6, align 8
  %12 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %12, i32 0, i32 0
  %14 = load i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @CTA_PROTOINFO, align 4
  %20 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %18, i32 %19)
  store %struct.nlattr* %20, %struct.nlattr** %7, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %37

24:                                               ; preds = %17
  %25 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %25, i32 0, i32 0
  %27 = load i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %30 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %31 = bitcast %struct.nf_conn* %30 to %struct.nf_conn.0*
  %32 = call i32 %27(%struct.sk_buff* %28, %struct.nlattr* %29, %struct.nf_conn.0* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %35 = call i32 @nla_nest_end(%struct.sk_buff* %33, %struct.nlattr* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %24, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
