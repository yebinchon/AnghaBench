; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nf_conntrack_tuple_mask = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 }
%struct.nlattr = type { i32 }

@CTA_EXPECT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple_mask*)* @ctnetlink_exp_dump_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_exp_dump_mask(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_tuple_mask*, align 8
  %8 = alloca %struct.nf_conntrack_l4proto*, align 8
  %9 = alloca %struct.nf_conntrack_tuple, align 4
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_tuple_mask* %2, %struct.nf_conntrack_tuple_mask** %7, align 8
  %12 = call i32 @memset(%struct.nf_conntrack_tuple* %9, i32 255, i32 12)
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.nf_conntrack_tuple_mask*, %struct.nf_conntrack_tuple_mask** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = call i32 @memcpy(i32* %14, i32* %17, i32 4)
  %19 = load %struct.nf_conntrack_tuple_mask*, %struct.nf_conntrack_tuple_mask** %7, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @CTA_EXPECT_MASK, align 4
  %35 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %33, i32 %34)
  store %struct.nlattr* %35, %struct.nlattr** %10, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %66

39:                                               ; preds = %3
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff* %41, %struct.nf_conntrack_tuple* %9)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %49)
  store %struct.nf_conntrack_l4proto* %50, %struct.nf_conntrack_l4proto** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %8, align 8
  %53 = call i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff* %51, %struct.nf_conntrack_tuple* %9, %struct.nf_conntrack_l4proto* %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %45, %39
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %61, %38
  store i32 -1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l4proto*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
