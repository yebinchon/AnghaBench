; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_param_changed.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_param_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_dl_entity }
%struct.sched_dl_entity = type { i64, i64, i64, i64 }
%struct.sched_attr = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_param_changed(%struct.task_struct* %0, %struct.sched_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.sched_attr*, align 8
  %6 = alloca %struct.sched_dl_entity*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.sched_attr* %1, %struct.sched_attr** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  store %struct.sched_dl_entity* %8, %struct.sched_dl_entity** %6, align 8
  %9 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sched_attr*, %struct.sched_attr** %5, align 8
  %13 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %18 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sched_attr*, %struct.sched_attr** %5, align 8
  %21 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %26 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sched_attr*, %struct.sched_attr** %5, align 8
  %29 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %34 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sched_attr*, %struct.sched_attr** %5, align 8
  %37 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %24, %16, %2
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
