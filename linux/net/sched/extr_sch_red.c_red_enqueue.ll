; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.red_sched_data = type { %struct.TYPE_10__, %struct.TYPE_11__, i32, %struct.Qdisc* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @red_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.red_sched_data*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.red_sched_data* %12, %struct.red_sched_data** %8, align 8
  %13 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %14 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %13, i32 0, i32 3
  %15 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  store %struct.Qdisc* %15, %struct.Qdisc** %9, align 8
  %16 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %17 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %16, i32 0, i32 2
  %18 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %18, i32 0, i32 1
  %20 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @red_calc_qavg(i32* %17, %struct.TYPE_11__* %19, i32 %23)
  %25 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %26 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %29 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %28, i32 0, i32 1
  %30 = call i64 @red_is_idling(%struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %34 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %33, i32 0, i32 1
  %35 = call i32 @red_end_of_idle_period(%struct.TYPE_11__* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %37, i32 0, i32 2
  %39 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %39, i32 0, i32 1
  %41 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @red_action(i32* %38, %struct.TYPE_11__* %40, i32 %44)
  switch i32 %45, label %95 [
    i32 130, label %46
    i32 128, label %47
    i32 129, label %69
  ]

46:                                               ; preds = %36
  br label %95

47:                                               ; preds = %36
  %48 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %49 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %48)
  %50 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %51 = call i32 @red_use_ecn(%struct.red_sched_data* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %59 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %130

63:                                               ; preds = %53
  %64 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %65 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %95

69:                                               ; preds = %36
  %70 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %71 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %70)
  %72 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %73 = call i32 @red_use_harddrop(%struct.red_sched_data* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %69
  %76 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %77 = call i32 @red_use_ecn(%struct.red_sched_data* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79, %75, %69
  %84 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %130

89:                                               ; preds = %79
  %90 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %91 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %36, %89, %63, %46
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %99 = call i32 @qdisc_enqueue(%struct.sk_buff* %96, %struct.Qdisc* %97, %struct.sk_buff** %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @likely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %107, %struct.sk_buff* %108)
  %110 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %111 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %128

115:                                              ; preds = %95
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @net_xmit_drop_count(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.red_sched_data*, %struct.red_sched_data** %8, align 8
  %121 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %126 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %125)
  br label %127

127:                                              ; preds = %119, %115
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %136

130:                                              ; preds = %83, %57
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %133 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %134 = call i32 @qdisc_drop(%struct.sk_buff* %131, %struct.Qdisc* %132, %struct.sk_buff** %133)
  %135 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %128
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_calc_qavg(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @red_is_idling(%struct.TYPE_11__*) #1

declare dso_local i32 @red_end_of_idle_period(%struct.TYPE_11__*) #1

declare dso_local i32 @red_action(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i32 @red_use_ecn(%struct.red_sched_data*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @red_use_harddrop(%struct.red_sched_data*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
