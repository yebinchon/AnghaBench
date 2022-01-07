; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_find_existing.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_find_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.nf_conntrack_tuple_hash* }
%struct.nf_conntrack_tuple_hash = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ovs_ct_find_existing: Can't get tuple\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ovs_ct_find_existing: Inversion failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn* (%struct.net*, %struct.nf_conntrack_zone*, i32, %struct.sk_buff*, i32)* @ovs_ct_find_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn* @ovs_ct_find_existing(%struct.net* %0, %struct.nf_conntrack_zone* %1, i32 %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nf_conntrack_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conntrack_tuple, align 4
  %13 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %14 = alloca %struct.nf_conn*, align 8
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %18 = call i32 @skb_network_offset(%struct.sk_buff* %17)
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.net*, %struct.net** %7, align 8
  %21 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %16, i32 %18, i32 %19, %struct.net* %20, %struct.nf_conntrack_tuple* %12)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.nf_conn* null, %struct.nf_conn** %6, align 8
  br label %69

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %15, %struct.nf_conntrack_tuple* %12)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store %struct.nf_conn* null, %struct.nf_conn** %6, align 8
  br label %69

33:                                               ; preds = %28
  %34 = bitcast %struct.nf_conntrack_tuple* %12 to i8*
  %35 = bitcast %struct.nf_conntrack_tuple* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.net*, %struct.net** %7, align 8
  %38 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %8, align 8
  %39 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %37, %struct.nf_conntrack_zone* %38, %struct.nf_conntrack_tuple* %12)
  store %struct.nf_conntrack_tuple_hash* %39, %struct.nf_conntrack_tuple_hash** %13, align 8
  %40 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %41 = icmp ne %struct.nf_conntrack_tuple_hash* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.nf_conn* null, %struct.nf_conn** %6, align 8
  br label %69

43:                                               ; preds = %36
  %44 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %45 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %44)
  store %struct.nf_conn* %45, %struct.nf_conn** %14, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %50, align 8
  %52 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %51, i64 %60
  store %struct.nf_conntrack_tuple_hash* %61, %struct.nf_conntrack_tuple_hash** %13, align 8
  br label %62

62:                                               ; preds = %48, %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %65 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %13, align 8
  %66 = call i32 @ovs_ct_get_info(%struct.nf_conntrack_tuple_hash* %65)
  %67 = call i32 @nf_ct_set(%struct.sk_buff* %63, %struct.nf_conn* %64, i32 %66)
  %68 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  store %struct.nf_conn* %68, %struct.nf_conn** %6, align 8
  br label %69

69:                                               ; preds = %62, %42, %31, %23
  %70 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  ret %struct.nf_conn* %70
}

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, %struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i32 @ovs_ct_get_info(%struct.nf_conntrack_tuple_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
