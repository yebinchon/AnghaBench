; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.tcf_connmark_info = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_zone = type { i32, i32 }
%struct.nf_conn = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_connmark_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_connmark_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %8 = alloca %struct.nf_conntrack_tuple, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_connmark_info*, align 8
  %11 = alloca %struct.nf_conntrack_zone, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %14 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %15 = call %struct.tcf_connmark_info* @to_connmark(%struct.tc_action* %14)
  store %struct.tcf_connmark_info* %15, %struct.tcf_connmark_info** %10, align 8
  %16 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %17 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %20 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %19, i32 0, i32 6
  %21 = call i32 @tcf_lastuse_update(i32* %20)
  %22 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %23 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %22, i32 0, i32 5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @bstats_update(i32* %23, %struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %115

39:                                               ; preds = %32
  %40 = load i32, i32* @NFPROTO_IPV4, align 4
  store i32 %40, i32* %13, align 4
  br label %59

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @ETH_P_IPV6, align 4
  %46 = call i64 @htons(i32 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %115

55:                                               ; preds = %48
  %56 = load i32, i32* @NFPROTO_IPV6, align 4
  store i32 %56, i32* %13, align 4
  br label %58

57:                                               ; preds = %41
  br label %115

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %60, i32* %9)
  store %struct.nf_conn* %61, %struct.nf_conn** %12, align 8
  %62 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %63 = icmp ne %struct.nf_conn* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %66 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %71 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %115

75:                                               ; preds = %59
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @skb_network_offset(%struct.sk_buff* %77)
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %81 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %76, i32 %78, i32 %79, i32 %82, %struct.nf_conntrack_tuple* %8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %115

86:                                               ; preds = %75
  %87 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %88 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %11, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @NF_CT_DEFAULT_ZONE_DIR, align 4
  %92 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %11, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %94 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32 %95, %struct.nf_conntrack_zone* %11, %struct.nf_conntrack_tuple* %8)
  store %struct.nf_conntrack_tuple_hash* %96, %struct.nf_conntrack_tuple_hash** %7, align 8
  %97 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %98 = icmp ne %struct.nf_conntrack_tuple_hash* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %86
  br label %115

100:                                              ; preds = %86
  %101 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %102 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %101)
  store %struct.nf_conn* %102, %struct.nf_conn** %12, align 8
  %103 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %104 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %109 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %114 = call i32 @nf_ct_put(%struct.nf_conn* %113)
  br label %115

115:                                              ; preds = %100, %99, %85, %64, %57, %54, %38
  %116 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %117 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %10, align 8
  %120 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  ret i32 %121
}

declare dso_local %struct.tcf_connmark_info* @to_connmark(%struct.tc_action*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
