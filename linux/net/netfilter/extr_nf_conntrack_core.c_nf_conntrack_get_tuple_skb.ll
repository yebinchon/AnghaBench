; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_get_tuple_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_get_tuple_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple_hash = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conn = type { i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@nf_ct_zone_dflt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.sk_buff*)* @nf_conntrack_get_tuple_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_get_tuple_skb(%struct.nf_conntrack_tuple* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %8 = alloca %struct.nf_conntrack_tuple, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %11, i32* %9)
  store %struct.nf_conn* %12, %struct.nf_conn** %10, align 8
  %13 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %14 = icmp ne %struct.nf_conn* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @CTINFO2DIR(i32 %17)
  %19 = call %struct.nf_conntrack_tuple* @nf_ct_tuple(%struct.nf_conn* %16, i32 %18)
  store %struct.nf_conntrack_tuple* %19, %struct.nf_conntrack_tuple** %6, align 8
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %22 = call i32 @memcpy(%struct.nf_conntrack_tuple* %20, %struct.nf_conntrack_tuple* %21, i32 4)
  store i32 1, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_network_offset(%struct.sk_buff* %25)
  %27 = load i32, i32* @NFPROTO_IPV4, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_net(i32 %30)
  %32 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %24, i32 %26, i32 %27, i32 %31, %struct.nf_conntrack_tuple* %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %62

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_net(i32 %38)
  %40 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32 %39, i32* @nf_ct_zone_dflt, %struct.nf_conntrack_tuple* %8)
  store %struct.nf_conntrack_tuple_hash* %40, %struct.nf_conntrack_tuple_hash** %7, align 8
  %41 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %42 = icmp ne %struct.nf_conntrack_tuple_hash* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %46 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %45)
  store %struct.nf_conn* %46, %struct.nf_conn** %10, align 8
  %47 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %48 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call %struct.nf_conntrack_tuple* @nf_ct_tuple(%struct.nf_conn* %47, i32 %55)
  store %struct.nf_conntrack_tuple* %56, %struct.nf_conntrack_tuple** %6, align 8
  %57 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %58 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %59 = call i32 @memcpy(%struct.nf_conntrack_tuple* %57, %struct.nf_conntrack_tuple* %58, i32 4)
  %60 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %61 = call i32 @nf_ct_put(%struct.nf_conn* %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %44, %43, %34, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conntrack_tuple* @nf_ct_tuple(%struct.nf_conn*, i32) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @memcpy(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32, i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
