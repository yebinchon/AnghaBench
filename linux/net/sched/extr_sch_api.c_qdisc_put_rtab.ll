; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_put_rtab.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_put_rtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdisc_rate_table = type { %struct.qdisc_rate_table*, i64 }

@qdisc_rtab_list = common dso_local global %struct.qdisc_rate_table* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_put_rtab(%struct.qdisc_rate_table* %0) #0 {
  %2 = alloca %struct.qdisc_rate_table*, align 8
  %3 = alloca %struct.qdisc_rate_table*, align 8
  %4 = alloca %struct.qdisc_rate_table**, align 8
  store %struct.qdisc_rate_table* %0, %struct.qdisc_rate_table** %2, align 8
  %5 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %2, align 8
  %6 = icmp ne %struct.qdisc_rate_table* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %2, align 8
  %9 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %34

14:                                               ; preds = %7
  store %struct.qdisc_rate_table** @qdisc_rtab_list, %struct.qdisc_rate_table*** %4, align 8
  br label %15

15:                                               ; preds = %31, %14
  %16 = load %struct.qdisc_rate_table**, %struct.qdisc_rate_table*** %4, align 8
  %17 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %16, align 8
  store %struct.qdisc_rate_table* %17, %struct.qdisc_rate_table** %3, align 8
  %18 = icmp ne %struct.qdisc_rate_table* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %3, align 8
  %21 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %2, align 8
  %22 = icmp eq %struct.qdisc_rate_table* %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %3, align 8
  %25 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %24, i32 0, i32 0
  %26 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %25, align 8
  %27 = load %struct.qdisc_rate_table**, %struct.qdisc_rate_table*** %4, align 8
  store %struct.qdisc_rate_table* %26, %struct.qdisc_rate_table** %27, align 8
  %28 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %3, align 8
  %29 = call i32 @kfree(%struct.qdisc_rate_table* %28)
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %3, align 8
  %33 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %32, i32 0, i32 0
  store %struct.qdisc_rate_table** %33, %struct.qdisc_rate_table*** %4, align 8
  br label %15

34:                                               ; preds = %13, %23, %15
  ret void
}

declare dso_local i32 @kfree(%struct.qdisc_rate_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
