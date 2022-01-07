; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_qdisc_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_qdisc_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64 }
%struct.pie_sched_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MAX_PROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @pie_qdisc_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_qdisc_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.pie_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %11 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.pie_sched_data* %11, %struct.pie_sched_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call i64 @qdisc_qlen(%struct.Qdisc* %12)
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %23 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %87

27:                                               ; preds = %3
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drop_early(%struct.Qdisc* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %60

35:                                               ; preds = %27
  %36 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %37 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %43 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX_PROB, align 4
  %47 = sdiv i32 %46, 10
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i64 @INET_ECN_set_ce(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %55 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %53, %49, %41, %35
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %65 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %70 = call i64 @qdisc_qlen(%struct.Qdisc* %69)
  %71 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %72 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %70, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %78 = call i64 @qdisc_qlen(%struct.Qdisc* %77)
  %79 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %80 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %63
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %85 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %83, %struct.Qdisc* %84)
  store i32 %85, i32* %4, align 4
  br label %103

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86, %21
  %88 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %89 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %94 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %97 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %102 = call i32 @qdisc_drop(%struct.sk_buff* %99, %struct.Qdisc* %100, %struct.sk_buff** %101)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %87, %82
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qdisc_qlen(%struct.Qdisc*) #1

declare dso_local i32 @drop_early(%struct.Qdisc*, i32) #1

declare dso_local i64 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
