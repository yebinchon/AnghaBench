; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dequeue_soft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dequeue_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}*, {}* }
%struct.taprio_sched = type { i32, %struct.Qdisc**, i32 }
%struct.net_device = type { i32 }
%struct.sched_entry = type { i32, i32, i32 }

@TAPRIO_ALL_GATES_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @taprio_dequeue_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @taprio_dequeue_soft(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.taprio_sched*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sched_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %15 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.taprio_sched* %15, %struct.taprio_sched** %3, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %16)
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %20 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.sched_entry* @rcu_dereference(i32 %21)
  store %struct.sched_entry* %22, %struct.sched_entry** %6, align 8
  %23 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %24 = icmp ne %struct.sched_entry* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %27 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @TAPRIO_ALL_GATES_OPEN, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %166

36:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %162, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %165

43:                                               ; preds = %37
  %44 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %45 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %44, i32 0, i32 1
  %46 = load %struct.Qdisc**, %struct.Qdisc*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %46, i64 %48
  %50 = load %struct.Qdisc*, %struct.Qdisc** %49, align 8
  store %struct.Qdisc* %50, %struct.Qdisc** %9, align 8
  %51 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %52 = icmp ne %struct.Qdisc* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %162

58:                                               ; preds = %43
  %59 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %60 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @TXTIME_ASSIST_IS_ENABLED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to %struct.sk_buff* (%struct.Qdisc*)**
  %70 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %69, align 8
  %71 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %72 = call %struct.sk_buff* %70(%struct.Qdisc* %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %162

76:                                               ; preds = %64
  br label %150

77:                                               ; preds = %58
  %78 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %79 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = bitcast {}** %81 to %struct.sk_buff* (%struct.Qdisc*)**
  %83 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %82, align 8
  %84 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %85 = call %struct.sk_buff* %83(%struct.Qdisc* %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %5, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  br label %162

89:                                               ; preds = %77
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  br label %162

102:                                              ; preds = %89
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i32 @qdisc_pkt_len(%struct.sk_buff* %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %106 = call i32 @taprio_get_time(%struct.taprio_sched* %105)
  %107 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @length_to_duration(%struct.taprio_sched* %107, i32 %108)
  %110 = call i32 @ktime_add_ns(i32 %106, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @TAPRIO_ALL_GATES_OPEN, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %117 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @ktime_after(i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %162

122:                                              ; preds = %114, %102
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @TAPRIO_ALL_GATES_OPEN, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %129 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %128, i32 0, i32 1
  %130 = call i64 @atomic_sub_return(i32 %127, i32* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %162

133:                                              ; preds = %126, %122
  %134 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %135 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = bitcast {}** %137 to %struct.sk_buff* (%struct.Qdisc*)**
  %139 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %138, align 8
  %140 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %141 = call %struct.sk_buff* %139(%struct.Qdisc* %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %5, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %133
  br label %166

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %76
  %151 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = call i32 @qdisc_bstats_update(%struct.Qdisc* %151, %struct.sk_buff* %152)
  %154 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %154, %struct.sk_buff* %155)
  %157 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %158 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %159, align 8
  br label %166

162:                                              ; preds = %132, %121, %101, %88, %75, %57
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %37

165:                                              ; preds = %37
  br label %166

166:                                              ; preds = %165, %150, %148, %35
  %167 = call i32 (...) @rcu_read_unlock()
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %168
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sched_entry* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @TXTIME_ASSIST_IS_ENABLED(i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @taprio_get_time(%struct.taprio_sched*) #1

declare dso_local i32 @length_to_duration(%struct.taprio_sched*, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i64 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
