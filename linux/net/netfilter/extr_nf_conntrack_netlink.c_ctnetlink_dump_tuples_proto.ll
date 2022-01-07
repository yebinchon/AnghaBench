; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* }
%struct.nlattr = type { i32 }

@CTA_TUPLE_PROTO = common dso_local global i32 0, align 4
@CTA_PROTO_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l4proto*)* @ctnetlink_dump_tuples_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_l4proto* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_l4proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_l4proto* %2, %struct.nf_conntrack_l4proto** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @CTA_TUPLE_PROTO, align 4
  %12 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %9, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @CTA_PROTO_NUM, align 4
  %19 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nla_put_u8(%struct.sk_buff* %17, i32 %18, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %7, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %27, i32 0, i32 0
  %29 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %28, align 8
  %30 = call i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %7, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %33, i32 0, i32 0
  %35 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %38 = call i32 %35(%struct.sk_buff* %36, %struct.nf_conntrack_tuple* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %42 = call i32 @nla_nest_end(%struct.sk_buff* %40, %struct.nlattr* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %25, %15
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
