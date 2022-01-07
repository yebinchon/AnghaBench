; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cbq_sched_data = type { i64, i64, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@TC_CBQ_MAXLEVEL = common dso_local global i64 0, align 8
@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @cbq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cbq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  %6 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.cbq_sched_data* %8, %struct.cbq_sched_data** %5, align 8
  %9 = call i64 (...) @psched_get_time()
  store i64 %9, i64* %6, align 8
  %10 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %16 = call i32 @cbq_update(%struct.cbq_sched_data* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %20 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %52, %17
  %22 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %23 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %25 = call %struct.sk_buff* @cbq_dequeue_1(%struct.Qdisc* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @qdisc_bstats_update(%struct.Qdisc* %29, %struct.sk_buff* %30)
  %32 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %33 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %2, align 8
  br label %84

38:                                               ; preds = %21
  %39 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %40 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TC_CBQ_MAXLEVEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %46 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %60

52:                                               ; preds = %44, %38
  %53 = load i64, i64* @TC_CBQ_MAXLEVEL, align 8
  %54 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %55 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %57 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %58 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %21

60:                                               ; preds = %51
  %61 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %62 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %68 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %67)
  %69 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %70 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %75 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %74, i32 0, i32 2
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %78 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @qdisc_watchdog_schedule(i32* %75, i64 %80)
  br label %82

82:                                               ; preds = %73, %66
  br label %83

83:                                               ; preds = %82, %60
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %85
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @psched_get_time(...) #1

declare dso_local i32 @cbq_update(%struct.cbq_sched_data*) #1

declare dso_local %struct.sk_buff* @cbq_dequeue_1(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
