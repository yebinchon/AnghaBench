; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_resolve_clash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_resolve_clash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i64 }

@IPS_NAT_DONE_MASK = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@drop = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, %struct.nf_conntrack_tuple_hash*)* @nf_ct_resolve_clash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_resolve_clash(%struct.net* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_conntrack_tuple_hash* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca %struct.nf_conntrack_l4proto*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_conntrack_tuple_hash* %3, %struct.nf_conntrack_tuple_hash** %9, align 8
  %14 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %9, align 8
  %15 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %14)
  store %struct.nf_conn* %15, %struct.nf_conn** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %16, i32* %12)
  store %struct.nf_conn* %17, %struct.nf_conn** %13, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %19 = call i32 @nf_ct_protonum(%struct.nf_conn* %18)
  %20 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %19)
  store %struct.nf_conntrack_l4proto* %20, %struct.nf_conntrack_l4proto** %11, align 8
  %21 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %11, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %4
  %26 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %27 = call i32 @nf_ct_is_dying(%struct.nf_conn* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %25
  %30 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @atomic_inc_not_zero(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %44 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %45 = call i64 @nf_ct_match(%struct.nf_conn* %43, %struct.nf_conn* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42, %35
  %48 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %51 = call i32 @nf_ct_acct_merge(%struct.nf_conn* %48, i32 %49, %struct.nf_conn* %50)
  %52 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %53 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %52, i32 0, i32 1
  %54 = call i32 @nf_conntrack_put(%struct.TYPE_2__* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @nf_ct_set(%struct.sk_buff* %55, %struct.nf_conn* %56, i32 %57)
  %59 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %59, i32* %5, align 4
  br label %68

60:                                               ; preds = %42
  %61 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %62 = call i32 @nf_ct_put(%struct.nf_conn* %61)
  br label %63

63:                                               ; preds = %60, %29, %25, %4
  %64 = load %struct.net*, %struct.net** %6, align 8
  %65 = load i32, i32* @drop, align 4
  %66 = call i32 @NF_CT_STAT_INC(%struct.net* %64, i32 %65)
  %67 = load i32, i32* @NF_DROP, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_is_dying(%struct.nf_conn*) #1

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i64 @nf_ct_match(%struct.nf_conn*, %struct.nf_conn*) #1

declare dso_local i32 @nf_ct_acct_merge(%struct.nf_conn*, i32, %struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_put(%struct.TYPE_2__*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
