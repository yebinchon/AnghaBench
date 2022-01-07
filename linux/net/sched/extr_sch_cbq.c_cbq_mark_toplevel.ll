; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_mark_toplevel.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_mark_toplevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_sched_data = type { i32 }
%struct.cbq_class = type { i32, i64, %struct.cbq_class* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_sched_data*, %struct.cbq_class*)* @cbq_mark_toplevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_mark_toplevel(%struct.cbq_sched_data* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cbq_sched_data* %0, %struct.cbq_sched_data** %3, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %4, align 8
  %7 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %8 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = call i64 (...) @psched_get_time()
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %41, %15
  %18 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %25 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %28 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %44

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %32 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %31, i32 0, i32 2
  %33 = load %struct.cbq_class*, %struct.cbq_class** %32, align 8
  store %struct.cbq_class* %33, %struct.cbq_class** %4, align 8
  %34 = icmp ne %struct.cbq_class* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %17, label %43

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %23, %43, %2
  ret void
}

declare dso_local i64 @psched_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
