; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sk_buff* }
%struct.Qdisc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tbf_sched_data = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @tbf_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_segment(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.tbf_sched_data*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.tbf_sched_data* %17, %struct.tbf_sched_data** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @netif_skb_features(%struct.sk_buff* %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @qdisc_pkt_len(%struct.sk_buff* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %22, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %35 = call i32 @qdisc_drop(%struct.sk_buff* %32, %struct.Qdisc* %33, %struct.sk_buff** %34)
  store i32 %35, i32* %4, align 4
  br label %109

36:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %79, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %8, align 8
  %61 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %64 = call i32 @qdisc_enqueue(%struct.sk_buff* %59, i32 %62, %struct.sk_buff** %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %40
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @net_xmit_drop_count(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %74 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %79

76:                                               ; preds = %40
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %9, align 8
  br label %37

81:                                               ; preds = %37
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 1, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %94, %95
  %97 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %91, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %81
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @consume_skb(%struct.sk_buff* %99)
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @NET_XMIT_DROP, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
