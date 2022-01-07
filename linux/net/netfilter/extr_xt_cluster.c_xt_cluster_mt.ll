; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cluster.c_xt_cluster_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cluster.c_xt_cluster_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xt_action_param = type { %struct.xt_cluster_match_info* }
%struct.xt_cluster_match_info = type { i32, i32 }
%struct.nf_conn = type { %struct.nf_conn* }

@PACKET_MULTICAST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@XT_CLUSTER_F_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @xt_cluster_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_cluster_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_cluster_match_info*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %13, align 8
  store %struct.xt_cluster_match_info* %14, %struct.xt_cluster_match_info** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %17 = call i32 @xt_family(%struct.xt_action_param* %16)
  %18 = call i32 @xt_cluster_is_multicast_addr(%struct.sk_buff* %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PACKET_MULTICAST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @PACKET_HOST, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20, %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %31, i32* %9)
  store %struct.nf_conn* %32, %struct.nf_conn** %8, align 8
  %33 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %34 = icmp eq %struct.nf_conn* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %73

36:                                               ; preds = %30
  %37 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %38 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %37, i32 0, i32 0
  %39 = load %struct.nf_conn*, %struct.nf_conn** %38, align 8
  %40 = icmp ne %struct.nf_conn* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 0
  %44 = load %struct.nf_conn*, %struct.nf_conn** %43, align 8
  %45 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %46 = call i64 @xt_cluster_hash(%struct.nf_conn* %44, %struct.xt_cluster_match_info* %45)
  store i64 %46, i64* %10, align 8
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %49 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %50 = call i64 @xt_cluster_hash(%struct.nf_conn* %48, %struct.xt_cluster_match_info* %49)
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %56 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %64 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XT_CLUSTER_F_INV, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = xor i32 %62, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %51, %35
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @xt_cluster_is_multicast_addr(%struct.sk_buff*, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @xt_cluster_hash(%struct.nf_conn*, %struct.xt_cluster_match_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
