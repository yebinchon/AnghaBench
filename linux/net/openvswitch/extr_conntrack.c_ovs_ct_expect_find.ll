; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_expect_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_expect_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_expect* (%struct.net*, %struct.nf_conntrack_zone*, i32, %struct.sk_buff*)* @ovs_ct_expect_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_expect* @ovs_ct_expect_find(%struct.net* %0, %struct.nf_conntrack_zone* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nf_conntrack_expect*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %13 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = call i32 @skb_network_offset(%struct.sk_buff* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %14, i32 %16, i32 %17, %struct.net* %18, %struct.nf_conntrack_tuple* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.nf_conntrack_expect* null, %struct.nf_conntrack_expect** %5, align 8
  br label %45

22:                                               ; preds = %4
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %25 = call %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net* %23, %struct.nf_conntrack_zone* %24, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_expect* %25, %struct.nf_conntrack_expect** %11, align 8
  %26 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %27 = icmp ne %struct.nf_conntrack_expect* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %31 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %29, %struct.nf_conntrack_zone* %30, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_tuple_hash* %31, %struct.nf_conntrack_tuple_hash** %12, align 8
  %32 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %12, align 8
  %33 = icmp ne %struct.nf_conntrack_tuple_hash* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %12, align 8
  %36 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %35)
  store %struct.nf_conn* %36, %struct.nf_conn** %13, align 8
  %37 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %38 = call i32 @nf_ct_delete(%struct.nf_conn* %37, i32 0, i32 0)
  %39 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = call i32 @nf_conntrack_put(i32* %40)
  br label %42

42:                                               ; preds = %34, %28
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  store %struct.nf_conntrack_expect* %44, %struct.nf_conntrack_expect** %5, align 8
  br label %45

45:                                               ; preds = %43, %21
  %46 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  ret %struct.nf_conntrack_expect* %46
}

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, %struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_delete(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_conntrack_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
